# inmar
The solution is to address the problem presented for the interview assessment.
The project is a Node.js based solution.
Please use the LoadData for loading the meta data into the relevant tables.
The solution execution starts with the InmarTestApiBooter.js. This file distributes the servers onto the number of cores available 
on the box it is run. The server code is present in InmarTestApiServer.js, which simply starts the Restify http server.
The routes are defined based on the Http Methods, GET, PUT, POST, DELETE, under the routes folder.
Sequelize is used for the OR Mapping in the dbhelpers folder files and the rest of the files content is usual code to 
receive and send the responses.


Some of the files are auto generated from scripts. Preliminary logging is included and code comments are made where relevant.
