import NIOSSL
import Fluent
import FluentMongoDriver
import Vapor

// configures your application
public func configure(_ app: Application) async throws {
    // uncomment to serve files from /Public folder
    // app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))

    //paste your MongoDB URI String from MongoDB Atlas in below line
    try app.databases.use(.mongo(connectionString: "MONGODB URI STRING"), as: .mongo)

    // register controllers
    try app.register(collection: MoviesController())
    
    // register routes
    try routes(app)
}
