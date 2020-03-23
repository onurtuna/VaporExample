import FluentSQLite
import Vapor

/// A single entry of a Camera list.
final class Camera: SQLiteModel {
    /// The unique identifier for this `Camera`.
    var id: Int?

    /// A title describing what this `Camera` entails.
    var name: String
    var group: String
    var ip: String
    var port: String

    /// Creates a new `Camera`.
    init(id: Int? = nil,
         name: String,
         group: String,
         ip: String,
         port: String) {
        self.id = id
        self.name = name
        self.group = group
        self.ip = ip
        self.port = port
    }
}

/// Allows `Camera` to be used as a dynamic migration.
extension Camera: Migration { }

/// Allows `Camera` to be encoded to and decoded from HTTP messages.
extension Camera: Content { }

/// Allows `Camera` to be used as a dynamic parameter in route definitions.
extension Camera: Parameter { }
