// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DKImagePickerController",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        .library(
            name: "DKImagePickerController",
            targets: ["DKImagePickerController"]),
    ],
    dependencies: [
        .package(url: "https://github.com/lightningkite/DKCamera", exact: "1.6.9"),
        .package(url: "https://github.com/lightningkite/DKPhotoGallery", branch: "master"),
        .package(url: "https://github.com/lightningkite/TOCropViewController", branch: "main"),
    ],
    targets: [
        .target(
            name: "DKImagePickerController",
            dependencies: [
                "DKCamera",
                "DKPhotoGallery",
                "TOCropViewController",
            ],
            path: "Sources")
    ]
)
