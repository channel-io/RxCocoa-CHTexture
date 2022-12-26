// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "RxCocoa-CHTexture",
  products: [
    // Products define the executables and libraries a package produces, and make them visible to other packages.
    .library(
      name: "RxCocoa-CHTexture",
      targets: ["RxCocoa-CHTexture"]
    ),
  ],
  dependencies: [
    .package(url: "https://github.com/ReactiveX/RxSwift.git", .upToNextMajor(from: "6.0.0")),
    .package(url: "https://github.com/3a4oT/Texture.git", branch: "spm")
  ],
  targets: [
    .target(
      name: "RxCocoa-CHTexture",
      dependencies: [
        .product(name: "AsyncDisplayKit", package: "Texture"),
        .product(name: "RxCocoa", package: "RxSwift"),
        "RxSwift"
      ],
      path: "RxCocoa-Texture/"
    ),
  ]
)
