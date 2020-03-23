import Vapor

/// Controls basic CRUD operations on `Camera`s.
final class CameraController {
    /// Returns a list of all `Camera`s.
    func index(_ req: Request) throws -> Future<[Camera]> {
        return Camera.query(on: req).all()
    }

    /// Saves a decoded `Camera` to the database.
    func create(_ req: Request) throws -> Future<Camera> {
        return try req.content.decode(Camera.self).flatMap { camera in
            return camera.save(on: req)
        }
    }
    
}
