/********************************************************************
Program: InmarTestApiBooter.js
Author: Venkat Koneti
Created Date: September 04, 2017 - 11:44:07 AM
Version: 1.0.0
Description:
    This script will boot InmarTestApiServer.js with the
    number of workers specified in WORKER_COUNT.
    The master will respond to SIGHUP, which will trigger
    restarting all the workers and reloading the app.
********************************************************************/
// Setup core requires for the Sub/Unsub server
var cluster         = require('cluster');
var numCPUs         = require('os').cpus().length;
var workerCount     = process.env.WORKER_COUNT || numCPUs;

// Defines what each worker needs to run
// In this case, it's InmarTestApiServer.js
cluster.setupMaster({ exec: 'InmarTestApiServer.js' });

// Gets the count of active workers
function numWorkers() {
    return Object.keys(cluster.workers).length;
}

var stopping = false;

// Forks off the workers unless the server is stopping
function forkNewWorkers() {
    if (!stopping) {
        for (var i = numWorkers(); i < workerCount; i++) {
            cluster.fork();
        }
    }
}

// A list of workers queued for a restart
var workersToStop = [];

// Stops a single worker
// Gives 60 seconds after disconnect before SIGTERM
function stopWorker(worker) {
    console.log('InmarTestApiServer - Stopping: ', worker.process.pid);
    worker.disconnect();
    var killTimer = setTimeout(function() {
        worker.kill();
    }, 60000);

    // Ensure we don't stay up just for this setTimeout
    killTimer.unref();
}

// Tell the next worker queued to restart to disconnect
// This will allow the process to finish it's work
// for 60 seconds before sending SIGTERM
function stopNextWorker() {
    var i = workersToStop.pop();
    var worker = cluster.workers[i];
    if (worker)
        stopWorker(worker);
}

// Stops all the works at once
function stopAllWorkers() {
    stopping = true;
    console.log('InmarTestApiServer - Stopping all workers');
    for (var id in cluster.workers) {
        stopWorker(cluster.workers[id]);
    }
}

// Worker is now listening on a port
// Once it is ready, we can signal the next worker to restart
cluster.on('listening', stopNextWorker);

// A worker has disconnected either because the process was killed
// or we are processing the workersToStop array restarting each process
// In either case, we will fork any workers needed
cluster.on('disconnect', forkNewWorkers);

// HUP signal sent to the master process to start restarting all the workers sequentially
process.on('SIGHUP', function() {
    console.log('InmarTestApiServer - Restarting all workers');
    workersToStop = Object.keys(cluster.workers);
    stopNextWorker();
});

// Kill all the workers at once
process.on('SIGTERM', stopAllWorkers);

// Fork off the initial workers
forkNewWorkers();
console.log('InmarTestApiServer - App master: ', process.pid, 'booted');
