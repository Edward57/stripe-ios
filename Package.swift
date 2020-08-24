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
      url: "https://github.com/stripe-ios/stripe-3ds2-ios-releases/releases/download/16.0.3.1-test/Stripe.xcframework.zip",
        checksum: "ddfd61eeb160cea1e9335df336a20b38f7166b1ff46a834f45f3b698cdfb0ddb"
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
