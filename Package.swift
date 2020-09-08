// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GovernorSwiftPackage",
    platforms: [
      .iOS(.v12)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "GovernorSwiftPackage",
            targets: ["GovernorSwiftPackage"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(
                    url: "https://github.com/Alamofire/Alamofire.git",
                    from: "4.8"
                )
        ,
        .package(
            url:"https://github.com/tristanhimmelman/AlamofireObjectMapper.git",
            from: "5.2"
        )
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "GovernorSwiftPackage",
            dependencies: []),
        .testTarget(
            name: "GovernorSwiftPackageTests",
            dependencies: ["GovernorSwiftPackage"]),
        .binaryTarget(name: "Governor",
                      url:"https://tiendeo.jfrog.io/artifactory/pods/Governor/Governor-1.0.5-APPS-1400-beta24.zip", checksum: "7f42fd9ad42939d65048fe535f9dd13078e4b35c59e9d8775a3f8b8eb9ec40ea")
    ]
)
