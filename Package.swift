// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "Sandboxer-Objc",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "Sandboxer",
            targets: ["Sandboxer"]),
    ],
    targets: [
        .target(
            name: "Sandboxer",
            path: "Sandboxer",
            resources: [
                .copy("SandboxerResources.bundle")
            ],
            cSettings: [
                .headerSearchPath("Classes"),
                .headerSearchPath("Classes/Cells"),
                .headerSearchPath("Classes/Models"),
                .headerSearchPath("Classes/Utilities"),
                .headerSearchPath("Classes/ViewControllers")
            ]),
    ]
)
