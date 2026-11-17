// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "TapAlertViewControllerV2",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(name: "TapAlertViewControllerV2", targets: ["TapAlertViewControllerV2"])
    ],
    dependencies: [
        .package(url: "https://github.com/Tap-Payments/TapAdditionsKitV2.git", from: "0.0.22"),
        .package(url: "https://github.com/Tap-Payments/TapVisualEffectViewV2.git", from: "0.0.5")
    ],
    targets: [
        .target(
            name: "TapAlertViewControllerV2",
            dependencies: [
                .product(name: "TapAdditionsKitV2", package: "TapAdditionsKitV2"),
                .product(name: "TapVisualEffectViewV2", package: "TapVisualEffectViewV2")
            ],
            path: "TapAlertViewControllerV2/TapAlertViewControllerV2",
            exclude: ["TapAlertViewControllerV2.h", "Info.plist"],
            sources: ["Source"],
            resources: [.process("Resources")]
        )
    ],
    swiftLanguageVersions: [.v5]
)
