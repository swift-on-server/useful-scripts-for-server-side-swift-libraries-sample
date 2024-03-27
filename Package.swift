// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "useful-scripts-for-server-side-swift-projects-sample",
    platforms: [
        .macOS(.v10_15),
    ],
    products: [
        .library(name: "MyLibrary", targets: ["MyLibrary"]),
        .executable(name: "MyApp", targets: ["MyApp"]),
    ],
    dependencies: [

    ],
    targets: [
        .target(
            name: "MyLibrary",
            dependencies: [
        
            ]
        ),
        .executableTarget(
            name: "MyApp",
            dependencies: [
                .target(name: "MyLibrary"),

            ]
        ),
        .testTarget(
            name: "MyLibraryTests",
            dependencies: [
                .target(name: "MyLibrary"),
                
            ]
        ),
    ]
)
