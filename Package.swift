// swift-tools-version:5.8

import PackageDescription

let package = Package(
    name: "MPVKit",
    platforms: [.macOS(.v10_15), .iOS(.v13), .tvOS(.v13)],
    products: [
        .library(
            name: "MPVKit",
            targets: ["_MPVKit"]
        ),
        .library(
            name: "MPVKit-GPL",
            targets: ["_MPVKit-GPL"]
        ),
    ],
    targets: [
        .target(
            name: "_MPVKit",
            dependencies: [
                "Libmpv", "_FFmpeg", "Libuchardet", "Libbluray",
                .target(name: "Libluajit", condition: .when(platforms: [.macOS])),
            ],
            path: "Sources/_MPVKit",
            linkerSettings: [
                .linkedFramework("AVFoundation"),
                .linkedFramework("CoreAudio"),
            ]
        ),
        .target(
            name: "_FFmpeg",
            dependencies: [
                "Libavcodec", "Libavdevice", "Libavfilter", "Libavformat", "Libavutil", "Libswresample", "Libswscale",
                "Libssl", "Libcrypto", "Libass", "Libfreetype", "Libfribidi", "Libharfbuzz",
                "MoltenVK", "Libshaderc_combined", "lcms2", "Libplacebo", "Libdovi", "Libunibreak",
                "gmp", "nettle", "hogweed", "gnutls", "Libdav1d", "Libuavs3d"
            ],
            path: "Sources/_FFmpeg",
            linkerSettings: [
                .linkedFramework("AudioToolbox"),
                .linkedFramework("CoreVideo"),
                .linkedFramework("CoreFoundation"),
                .linkedFramework("CoreMedia"),
                .linkedFramework("Metal"),
                .linkedFramework("VideoToolbox"),
                .linkedLibrary("bz2"),
                .linkedLibrary("iconv"),
                .linkedLibrary("expat"),
                .linkedLibrary("resolv"),
                .linkedLibrary("xml2"),
                .linkedLibrary("z"),
                .linkedLibrary("c++"),
            ]
        ),
        .target(
            name: "_MPVKit-GPL",
            dependencies: [
                "Libmpv-GPL", "_FFmpeg-GPL", "Libuchardet", "Libbluray",
                .target(name: "Libluajit", condition: .when(platforms: [.macOS])),
            ],
            path: "Sources/_MPVKit-GPL",
            linkerSettings: [
                .linkedFramework("AVFoundation"),
                .linkedFramework("CoreAudio"),
            ]
        ),
        .target(
            name: "_FFmpeg-GPL",
            dependencies: [
                "Libavcodec-GPL", "Libavdevice-GPL", "Libavfilter-GPL", "Libavformat-GPL", "Libavutil-GPL", "Libswresample-GPL", "Libswscale-GPL",
                "Libssl", "Libcrypto", "Libass", "Libfreetype", "Libfribidi", "Libharfbuzz",
                "MoltenVK", "Libshaderc_combined", "lcms2", "Libplacebo", "Libdovi", "Libunibreak",
                "Libsmbclient", "gmp", "nettle", "hogweed", "gnutls", "Libdav1d", "Libuavs3d"
            ],
            path: "Sources/_FFmpeg-GPL",
            linkerSettings: [
                .linkedFramework("AudioToolbox"),
                .linkedFramework("CoreVideo"),
                .linkedFramework("CoreFoundation"),
                .linkedFramework("CoreMedia"),
                .linkedFramework("Metal"),
                .linkedFramework("VideoToolbox"),
                .linkedLibrary("bz2"),
                .linkedLibrary("iconv"),
                .linkedLibrary("expat"),
                .linkedLibrary("resolv"),
                .linkedLibrary("xml2"),
                .linkedLibrary("z"),
                .linkedLibrary("c++"),
            ]
        ),

        .binaryTarget(
            name: "Libmpv-GPL",
            url: "https://github.com/endpne/MPVKit/releases/download/0.39.0/Libmpv-GPL.xcframework.zip",
            checksum: "c68c5f1730ff288c2440ae6ca07228d0ff116b0da4e4bcfa28bf3efbe76c617f"
        ),
        .binaryTarget(
            name: "Libavcodec-GPL",
            url: "https://github.com/endpne/MPVKit/releases/download/0.39.0/Libavcodec-GPL.xcframework.zip",
            checksum: "97055720391afd0af0c240c0e8c9548c0ef0f9606428db6a975fded610639892"
        ),
        .binaryTarget(
            name: "Libavdevice-GPL",
            url: "https://github.com/endpne/MPVKit/releases/download/0.39.0/Libavdevice-GPL.xcframework.zip",
            checksum: "9d54a8b258c05532518bcd8d3d7d97e06d4283d242e2481a0dcc3ac940e7b800"
        ),
        .binaryTarget(
            name: "Libavformat-GPL",
            url: "https://github.com/endpne/MPVKit/releases/download/0.39.0/Libavformat-GPL.xcframework.zip",
            checksum: "e1299bfdb95cbf49e91a5f500b744fc9a21c39a282d8260ab8c01df518353258"
        ),
        .binaryTarget(
            name: "Libavfilter-GPL",
            url: "https://github.com/endpne/MPVKit/releases/download/0.39.0/Libavfilter-GPL.xcframework.zip",
            checksum: "34eea7bde372cdbeb7658ccd7eb78485f22b275907c461578e1c5d602a45f002"
        ),
        .binaryTarget(
            name: "Libavutil-GPL",
            url: "https://github.com/endpne/MPVKit/releases/download/0.39.0/Libavutil-GPL.xcframework.zip",
            checksum: "5cf2ba40488ff154d4628e06c62919126568a9fb8f0f7d06c9e94c41498ee442"
        ),
        .binaryTarget(
            name: "Libswresample-GPL",
            url: "https://github.com/endpne/MPVKit/releases/download/0.39.0/Libswresample-GPL.xcframework.zip",
            checksum: "68b30963edd5dde75cdc21715e0f1baecdc23c12d87f59be1fcf21a0b1188ac6"
        ),
        .binaryTarget(
            name: "Libswscale-GPL",
            url: "https://github.com/endpne/MPVKit/releases/download/0.39.0/Libswscale-GPL.xcframework.zip",
            checksum: "2c4f8b42f9f8d42a75c7815ea9b9d47ae1705a0a76e8bf2ec47aaa97de93d056"
        ),
        //AUTO_GENERATE_TARGETS_BEGIN//

        .binaryTarget(
            name: "Libcrypto",
            url: "https://github.com/endpne/openssl-build/releases/download/3.2.0/Libcrypto.xcframework.zip",
            checksum: "83b0b90cf635d6f001a5876b6819e7708dc3a947fa5da958f908f389fbe4741d"
        ),
        .binaryTarget(
            name: "Libssl",
            url: "https://github.com/endpne/openssl-build/releases/download/3.2.0/Libssl.xcframework.zip",
            checksum: "a72db956bcd530163551d4b181f54f799a4107d5cb642d9038897ae1a2cfc031"
        ),

        .binaryTarget(
            name: "gmp",
            url: "https://github.com/endpne/gnutls-build/releases/download/3.8.3/gmp.xcframework.zip",
            checksum: "98a4031eb740a3a05c7d29d384277e3154301d1804310774d0d5cfadccbd1fc7"
        ),

        .binaryTarget(
            name: "nettle",
            url: "https://github.com/endpne/gnutls-build/releases/download/3.8.3/nettle.xcframework.zip",
            checksum: "ec5133d890ceb6f3eab4b40aca92633de0aaf8c9f3b6a43d70e569d91a4f57da"
        ),
        .binaryTarget(
            name: "hogweed",
            url: "https://github.com/endpne/gnutls-build/releases/download/3.8.3/hogweed.xcframework.zip",
            checksum: "a5b595c875c5c0fc5bacf0a3747c37aa35af2c57424208f0923e8891f02b6af4"
        ),

        .binaryTarget(
            name: "gnutls",
            url: "https://github.com/endpne/gnutls-build/releases/download/3.8.3/gnutls.xcframework.zip",
            checksum: "4b65122a3ed72a7d6305bd182b56f018b124a2b0b78db75f5ec47cdf5dd05051"
        ),

        .binaryTarget(
            name: "Libunibreak",
            url: "https://github.com/endpne/libass-build/releases/download/0.17.3/Libunibreak.xcframework.zip",
            checksum: "c800b0be91efcb28fd0ee73a92a11c6a2d86d597988daae4481c2e4fe640f827"
        ),

        .binaryTarget(
            name: "Libfreetype",
            url: "https://github.com/endpne/libass-build/releases/download/0.17.3/Libfreetype.xcframework.zip",
            checksum: "35b6a014102e2919f936d953d2a47d8bfa20ee736e2f5ae7486432d15fc2f79c"
        ),

        .binaryTarget(
            name: "Libfribidi",
            url: "https://github.com/endpne/libass-build/releases/download/0.17.3/Libfribidi.xcframework.zip",
            checksum: "abec220bee10fc304a2ef2e1212d67397c6c1afe4f2f6d10454aec76e56ea277"
        ),

        .binaryTarget(
            name: "Libharfbuzz",
            url: "https://github.com/endpne/libass-build/releases/download/0.17.3/Libharfbuzz.xcframework.zip",
            checksum: "e25ec294f33cd09c3e8241f49d565af912e190b87bb4f2acd07f2fb99acad53e"
        ),

        .binaryTarget(
            name: "Libass",
            url: "https://github.com/endpne/libass-build/releases/download/0.17.3/Libass.xcframework.zip",
            checksum: "0f3f8bbfa926b79ba37780edbc7733eda0cc7043a16aee34af00a92ea56470a6"
        ),

        .binaryTarget(
            name: "Libsmbclient",
            url: "https://github.com/endpne/libsmbclient-build/releases/download/4.15.13/Libsmbclient.xcframework.zip",
            checksum: "7d5588e8e9bee7ac11b8a417071ea1076d96ef6fa26522da0dd4845c403c2b7d"
        ),

        .binaryTarget(
            name: "Libuavs3d",
            url: "https://github.com/endpne/libuavs3d-build/releases/download/1.2.1/Libuavs3d.xcframework.zip",
            checksum: "5b5ed6c222cf781b86c62a60f6ea3f5ba041ea286f7aca06d389098f037b820f"
        ),

        .binaryTarget(
            name: "Libdovi",
            url: "https://github.com/endpne/libdovi-build/releases/download/3.3.0/Libdovi.xcframework.zip",
            checksum: "ebb8651856b6843dcb3f38cec99a5014554475243950c6f215a1f37872b3141b"
        ),

        .binaryTarget(
            name: "MoltenVK",
            url: "https://github.com/endpne/moltenvk-build/releases/download/1.2.11/MoltenVK.xcframework.zip",
            checksum: "f7d65ee37b8c8484bd7cc53286e87be3051189acfa068f6168baa4f6ad084b60"
        ),

        .binaryTarget(
            name: "Libshaderc_combined",
            url: "https://github.com/endpne/libshaderc-build/releases/download/2024.3.0/Libshaderc_combined.xcframework.zip",
            checksum: "08717fd540f41be3191531079bc1f2a95e2ca7314e4580d97df8ecc72f448d6f"
        ),

        .binaryTarget(
            name: "lcms2",
            url: "https://github.com/endpne/libplacebo-build/releases/download/7.349.0/lcms2.xcframework.zip",
            checksum: "436b72c484e772e9d088b920ba9900dfd3c62bcdd990779ac06840f43b2942a6"
        ),

        .binaryTarget(
            name: "Libplacebo",
            url: "https://github.com/endpne/libplacebo-build/releases/download/7.349.0/Libplacebo.xcframework.zip",
            checksum: "d9e4c8dc5d847eeeda6c57ddcfc61336b09f089f9e7c541c1ad0b34b4f96d325"
        ),

        .binaryTarget(
            name: "Libdav1d",
            url: "https://github.com/endpne/libdav1d-build/releases/download/1.4.3/Libdav1d.xcframework.zip",
            checksum: "302c5fb745dff774cab1b7b37e7840d8f20abec62f33e919dd1541ccd8146604"
        ),

        .binaryTarget(
            name: "Libavcodec",
            url: "https://github.com/endpne/MPVKit/releases/download/0.39.0/Libavcodec.xcframework.zip",
            checksum: "bdec200996c9e1ea64859a4f507e0e8257cfa5295aaeaf6365a52cef05809fde"
        ),
        .binaryTarget(
            name: "Libavdevice",
            url: "https://github.com/endpne/MPVKit/releases/download/0.39.0/Libavdevice.xcframework.zip",
            checksum: "531e2345d73e4451b689e8b7994a1bb481c1ad28a11ace5b762af7e24eef330d"
        ),
        .binaryTarget(
            name: "Libavformat",
            url: "https://github.com/endpne/MPVKit/releases/download/0.39.0/Libavformat.xcframework.zip",
            checksum: "2a081388b695372e11c668fbb6f48f7bcc843131a3913ad330f314248a6f7cb2"
        ),
        .binaryTarget(
            name: "Libavfilter",
            url: "https://github.com/endpne/MPVKit/releases/download/0.39.0/Libavfilter.xcframework.zip",
            checksum: "f54ebf5250dc22ca897a6c33848ebdfbbce00c7f2c89a13f6a442a59bd345c85"
        ),
        .binaryTarget(
            name: "Libavutil",
            url: "https://github.com/endpne/MPVKit/releases/download/0.39.0/Libavutil.xcframework.zip",
            checksum: "5b8d57208abdfa287501fc91310c70ee1c1012a4e85109f9ee514bd8138ddd64"
        ),
        .binaryTarget(
            name: "Libswresample",
            url: "https://github.com/endpne/MPVKit/releases/download/0.39.0/Libswresample.xcframework.zip",
            checksum: "0f334f12fd8d10b744587247d8ea6db83c68b8aae1849e1d2f97887479a08f4f"
        ),
        .binaryTarget(
            name: "Libswscale",
            url: "https://github.com/endpne/MPVKit/releases/download/0.39.0/Libswscale.xcframework.zip",
            checksum: "fe729be1ab362b7424dfe429c4afd84d9ca2e671bd554963612465ee491f68db"
        ),

        .binaryTarget(
            name: "Libuchardet",
            url: "https://github.com/endpne/libuchardet-build/releases/download/0.0.8/Libuchardet.xcframework.zip",
            checksum: "0cfd3747a84f5460fb10410047e8fd0d7908ce0734dacb1bfa5a39808ebd5984"
        ),

        .binaryTarget(
            name: "Libluajit",
            url: "https://github.com/endpne/libluajit-build/releases/download/2.1.0/Libluajit.xcframework.zip",
            checksum: "0dc42e2cd1b1145b433508cc99a856dd1d7e52a0eddc29c60958542340113d3c"
        ),

        .binaryTarget(
            name: "Libbluray",
            url: "https://github.com/endpne/MPVKit/releases/download/0.39.0/Libbluray.xcframework.zip",
            checksum: "1f18eafb2865cd590b4d7099f81e84c128c387bf2d9ab869322c9ab6521a312a"
        ),

        .binaryTarget(
            name: "Libmpv",
            url: "https://github.com/endpne/MPVKit/releases/download/0.39.0/Libmpv.xcframework.zip",
            checksum: "1ffbe7a64e67c1521c93a2cb7b7bd189f29d1ab8ab13cd123c5b57563973e36c"
        ),
        //AUTO_GENERATE_TARGETS_END//
    ]
)
