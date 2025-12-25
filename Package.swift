// swift-tools-version: 5.7
import PackageDescription

let package = Package(
    name: "KTVHTTPCache",
    platforms: [
        .iOS(.v12),
        .tvOS(.v12),
        .macOS(.v10_15),
    ],
    products: [
        .library(
            name: "KTVHTTPCache",
            targets: ["KTVHTTPCache"]
        ),
    ],
    targets: [
        .target(
            name: "CocoaAsyncSocket",
            path: "Vendors/CocoaAsyncSocket",
            publicHeadersPath: "."
        ),
        .target(
            name: "KTVHTTPCache",
            dependencies: ["CocoaAsyncSocket"],
            path: "KTVHTTPCache",
            publicHeadersPath: "include",
            cSettings: [
                .headerSearchPath("Classes/KTVHCCommon"),
                .headerSearchPath("Classes/KTVHCDataStorage"),
                .headerSearchPath("Classes/KTVHCHTTPServer"),
                .headerSearchPath("Classes/KTVHCDownload"),
                .headerSearchPath("Classes/KTVHCTools"),
                .headerSearchPath("CocoaHTTPServer"),
                .headerSearchPath("CocoaHTTPServer/Categories"),
                .headerSearchPath("CocoaHTTPServer/Mime"),
                .headerSearchPath("CocoaHTTPServer/Responses"),
            ]
        ),
    ]
)
