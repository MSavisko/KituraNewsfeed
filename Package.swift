import PackageDescription

let package = Package(
    name: "KituraNewsfeed",
    targets: [
        Target(name: "Authorization", dependencies: []),
        Target(name: "Newsfeed", dependencies: ["Authorization"]),
        Target(name: "KituraServer", dependencies: ["Newsfeed", "Authorization"])
    ],
    dependencies: [
        // Kitura
	     .Package(url: "https://github.com/IBM-Swift/Kitura.git", majorVersion: 1, minor: 6),
	     .Package(url: "https://github.com/IBM-Swift/HeliumLogger.git", majorVersion: 1, minor: 6),

        // misc
        .Package(url: "https://github.com/oanton/SQLite-StORM.git", majorVersion: 1),
        .Package(url: "https://github.com/walkline/RSSProvider.git", majorVersion: 1),
        .Package(url: "https://github.com/iamjono/SwiftString.git", majorVersion: 1)
        
    ]
)
