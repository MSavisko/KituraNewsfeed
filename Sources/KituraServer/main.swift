import Foundationimport Kituraimport LoggerAPIimport HeliumLoggerimport SQLiteStORMimport Newsfeedlet connect = SQLiteConnect("./newsfeeddb")connect.createTablesIfNeeded()// Using an implementation for a LoggerLog.logger = HeliumLogger()// Add HTTP Server to listen on port 8090Kitura.addHTTPServer(onPort: 8099, with: RouteCreator.create())// start the framework - the servers added until now will start listeningKitura.run()