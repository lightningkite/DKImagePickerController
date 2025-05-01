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
            targets: ["DKImagePickerController", "DKImageDataManager", "Extensions"],
    ],
    dependencies: [
        .package(url: "https://github.com/lightningkite/DKCamera", exact: "1.6.9"),
        .package(url: "https://github.com/lightningkite/DKPhotoGallery", exact: "1.0.1"),
        .package(url: "https://github.com/TimOliver/TOCropViewController", from: "2.6.2"),
    ],
    targets: [
        .target(
            name: "DKImagePickerController",
            dependencies: [
                .product(name: "DKCamera", package: "DKCamera"),
                .product(name: "DKPhotoGallery", package: "DKPhotoGallery"), 
                .product(name: "TOCropViewController", package: "TOCropViewController"),
                .target(name: "DKImageDataManager", package: "DKImageDataManager"),
                .target(name: "Extensions", package: "Extensions"),
            ],
            path: "Sources/DKImagePickerController"),
        .target(
            name: "DKImageDataManager",
            path: "Sources/DKImageDataManager"),
        .target(
            name: "Extensions",
            path: "Sources/Extensions"),
        )
    ]
)
