import NIOSSL
import Fluent
import FluentMongoDriver
import Vapor

// configures your application
public func configure(_ app: Application) async throws {
    // uncomment to serve files from /Public folder
    // app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))

    try app.databases.use(.mongo(connectionString: "mongodb+srv://pbarot297:t4Sw9yzRgoO5UJvt@moviescluster.n2xf6zt.mongodb.net/moviesdb?retryWrites=true&w=majority&appName=MoviesCluster"), as: .mongo)

    // register controllers
    try app.register(collection: MoviesController())
    
    // register routes
    try routes(app)
}
