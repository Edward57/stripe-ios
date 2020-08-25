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
      url: "https://github.com/stripe-ios/stripe-3ds2-ios-releases/releases/download/16.0.3.2-test/Stripe.xcframework.zip",
        checksum: "44036da0a175af18d1472ea48d5989b8f2bbaa4e1936d7a1d86502e742f15a77"
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
