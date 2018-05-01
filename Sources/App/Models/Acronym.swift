import Vapor
import FluentSQLite

final class Acronym: Codable {
    var id: Int?
    var short: String
    var long: String
    
    init(short: String, long: String) {
        self.short = short
        self.long = long
    }
}

// The Fluent packages provide Model helper protocols for each database provider so you don’t have to specify the database or ID types, or the key.
extension Acronym: SQLiteModel {}

// Declare a database table for Acronym
extension Acronym: Migration {}

// For saving acronyms in the database, Vapor provides Content, a wrapper around Codable, which allows you to convert models and other data between various formats.
extension Acronym: Content {}
