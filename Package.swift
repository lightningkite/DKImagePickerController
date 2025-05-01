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
        .package(url: "../DKCamera", exact: "1.6.9"),
        .package(url: "../DKPhotoGallery", exact: "1.0.0"),
        .package(url: "https://github.com/TimOliver/TOCropViewController", from: "2.6.0"),
    ],
    targets: [
        .target(
            name: "DKImagePickerController",
            dependencies: [
                .product(name: "DKCamera", package: "DKCamera"),
                .product(name: "DKPhotoGallery", package: "DKPhotoGallery"), 
                .product(name: "CropViewController", package: "TOCropViewController"),
            ],
            path: "Sources"),
    ]
)
