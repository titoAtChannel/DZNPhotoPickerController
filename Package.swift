// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "DZNPhotoPickerController",
    platforms: [
        .iOS(.v16)
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
        .package(url: "https://github.com/dzenbot/DZNEmptyDataSet", branch: "master")
    ],
    targets: [
        .target(
            name: "DZNPhotoPickerController",
            dependencies: [
                .product(name: "AFNetworking", package: "AFNetworking"),
                .product(name: "SDWebImage", package: "SDWebImage"),
                .product(name: "DZNEmptyDataSet", package: "DZNEmptyDataSet")
            ],
            path: "Source/Classes",
            exclude: ["Source/Classes/UIImagePickerController"],
            resources: [.process("../Resources")]
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
    ]
)
