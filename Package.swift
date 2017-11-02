// swift-tools-version:3.1

import PackageDescription

let package = Package(
    name: "swiftz-prac",
    dependencies: [
        .Package(url: "https://github.com/typelift/Swiftz", versions: Version(0,6,0)..<Version(1,0,0))
    ]
)
