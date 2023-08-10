// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DemoPackage2",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
//        .library(
//            name: "DemoPackage2",
//            targets: ["DemoPackage2", "Model"]),
        .library(name: "Modele", targets: ["Model"])
    ],
    dependencies: [
        .package(url: "https://github.com/Anbarasan-S/SwiftPackageManager.git", exact: "1.0.1")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "DemoPackage2",
            dependencies: []),
        .testTarget(
            name: "DemoPackage2Tests",
            dependencies: ["DemoPackage2"]),
        
            .target(name: "Model",
                dependencies: ["DisplayerPackage"]
                )
    ]
)
