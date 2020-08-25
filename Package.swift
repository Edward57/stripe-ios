// swift-tools-version:5.3
import PackageDescription

let package = Package(
  name: "Stripe",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v10)
    ],
  products: [
    .library(
      name: "Stripe",
      targets: ["Stripe",]
    ),
  ],
  dependencies: [
  ],
  targets: [
    .target(
      name: "Stripe",
      dependencies: ["Stripe3DS2"],
      path: "Stripe",
        resources: [.process("Resources/Images")],
        publicHeadersPath: "Stripe/PublicHeaders",
        cSettings: [
          .headerSearchPath("PublicHeaders"),
          .headerSearchPath(".."),
          .headerSearchPath("PublicHeaders/Stripe"),
        ]
    ),
//    .testTarget(
//      name: "StripeiOS Tests",
//      dependencies: ["StripeiOS", "Stripe3DS2"],
//      path: "Tests"
//    ),
    .binaryTarget( name: "Stripe3DS2",
      url: "https://github.com/stripe-ios/stripe-3ds2-ios-releases/releases/download/16.0.3.2-test/Stripe3DS2.xcframework.zip",
      checksum: "ab952ad7e28afb09734788983b6430d019e5519c0a6c23464859b7337eb3a8fe"
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
*/

