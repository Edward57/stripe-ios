// swift-tools-version:5.3
import PackageDescription

let package = Package(
  name: "Stripe",
  platforms: [
    .iOS(.v10)
  ],
  products: [
    .library(
      name: "Stripe",
      targets: ["Stripe"]
    ),
  ],
  dependencies: [
  ],
  targets: [
    .binaryTarget(
      name: "Stripe",
      url: "https://github.com/stripe/stripe-ios/releases/download/v19.4.0/Stripe.xcframework.zip",
        checksum: "d1ab10f4fbd5d577715a002309136e7b17a400c92d78151a8ea331d160c04b20"
    ),
  ]
)


/*
// swift-tools-version:5.3
import PackageDescription

let package = Package(
  name: "Stripe",
  platforms: [
    .iOS(.v10)
  ],
  products: [
    .library(
      name: "Stripe",
      targets: ["StripeiOS", "libStripe3DS2"]
    ),
  ],
  dependencies: [
  ],
  targets: [
    .target(
      name: "StripeiOS",
      path: "Stripe",
      publicHeadersPath: "Stripe/PublicHeaders"
    ),
    .testTarget(
      name: "StripeiOS Tests",
      dependencies: ["StripeiOS", "libStripe3DS2"],
      path: "Tests"
    ),
    .binaryTarget(
      name: "libStripe3DS2",
      path: "InternalFrameworks/libStripe3DS2.a"
    ),
  ]
)
*/
