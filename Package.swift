// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "DZNPhotoPickerController",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "DZNPhotoPickerController",
            targets: ["DZNPhotoPickerController"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/AFNetworking/AFNetworking.git", from: "4.0.0"),
        .package(url: "https://github.com/SDWebImage/SDWebImage.git", from: "5.0.0"),
        .package(url: "https://github.com/dzenbot/DZNEmptyDataSet.git", from: "1.3.3")
    ],
    targets: [
        .target(
            name: "DZNPhotoPickerController",
            dependencies: [
                .product(name: "AFNetworking", package: "AFNetworking"),
                .product(name: "SDWebImage", package: "SDWebImage"),
                .product(name: "DZNEmptyDataSet", package: "DZNEmptyDataSet")
            ],
            path: "Source",
            exclude: ["Source/Classes/UIImagePickerController"],
            resources: [.copy("Source/Resources")]
        ),
        .target(
            name: "DZNPhotoService",
            dependencies: [
                .product(name: "AFNetworking", package: "AFNetworking")
            ],
            path: "Source/Classes/DZNPhotoService"
        ),
        .target(
            name: "UIImagePickerControllerExtended",
            path: "Source/Classes/UIImagePickerController"
        )
    ],
    swiftLanguageVersions: [.v5]
)
