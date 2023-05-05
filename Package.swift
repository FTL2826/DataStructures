// swift-tools-version: 5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DataStructures",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "LinkedList",
            targets: ["LinkedList"]),
        .library(
            name: "Stack",
            targets: ["Stack"]),
        .library(
            name: "Deque",
            targets: ["Deque"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "LinkedList",
            dependencies: [],
            path: "Sources/DataStructures/LinkedList"),
        .testTarget(
            name: "LinkedListTests",
            dependencies: ["LinkedList"],
            path: "Tests/DataStructuresTests/LinkedListTests"),
        
        .target(
            name: "Stack",
            dependencies: ["LinkedList"],
            path: "Sources/DataStructures/Stack"),
        .testTarget(
            name: "StackTests",
            dependencies: ["Stack"],
            path: "Tests/DataStructuresTests/StackTests"),
        
        .target(
            name: "Deque",
            dependencies: ["LinkedList"],
            path: "Sources/DataStructures/Deque"),
        .testTarget(
            name: "DequeTests",
            dependencies: ["Deque"],
            path: "Tests/DataStructuresTests/DequeTests"),
        
    ]
)
