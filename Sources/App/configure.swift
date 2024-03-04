import NIOSSL
import Fluent
import FluentMongoDriver
import Vapor

// configures your application
public func configure(_ app: Application) async throws {
    // uncomment to serve files from /Public folder
    // app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))

    //paste your MongoDB URI String from MongoDB Atlas in below line with your username and password
    try app.databases.use(.mongo(connectionString: "mongodb+srv://<username>:<password>@moviescluster.n2xf6zt.mongodb.net/moviesdb?retryWrites=true&w=majority&appName=MoviesCluster"), as: .mongo)

    // register controllers
    try app.register(collection: MoviesController())
    
    // register routes
    try routes(app)
}
