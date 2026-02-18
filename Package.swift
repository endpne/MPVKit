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
            url: "\(Libmpv-GPL_url)",
            checksum: "\(Libmpv-GPL_checksum)"
        ),
        .binaryTarget(
            name: "Libavcodec-GPL",
            url: "\(Libavcodec-GPL_url)",
            checksum: "\(Libavcodec-GPL_checksum)"
        ),
        .binaryTarget(
            name: "Libavdevice-GPL",
            url: "\(Libavdevice-GPL_url)",
            checksum: "\(Libavdevice-GPL_checksum)"
        ),
        .binaryTarget(
            name: "Libavformat-GPL",
            url: "\(Libavformat-GPL_url)",
            checksum: "\(Libavformat-GPL_checksum)"
        ),
        .binaryTarget(
            name: "Libavfilter-GPL",
            url: "\(Libavfilter-GPL_url)",
            checksum: "\(Libavfilter-GPL_checksum)"
        ),
        .binaryTarget(
            name: "Libavutil-GPL",
            url: "\(Libavutil-GPL_url)",
            checksum: "\(Libavutil-GPL_checksum)"
        ),
        .binaryTarget(
            name: "Libswresample-GPL",
            url: "\(Libswresample-GPL_url)",
            checksum: "\(Libswresample-GPL_checksum)"
        ),
        .binaryTarget(
            name: "Libswscale-GPL",
            url: "\(Libswscale-GPL_url)",
            checksum: "\(Libswscale-GPL_checksum)"
        ),
        //AUTO_GENERATE_TARGETS_BEGIN//

        .binaryTarget(
            name: "Libspirv_cross",
            url: "https://github.com/endpne/libspirv-cross-build/releases/download/1.4.309/Libspirv_cross.xcframework.zip",
            checksum: "0b090d3de5ec80b2c0f6844c17b58ba2a10973b7cce9783dc916c9b72e90967d"
        ),

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
            url: "https://github.com/endpne/MPVKit/releases/download/0.40.0/Libavcodec.xcframework.zip",
            checksum: "347c9c52f58ecb0e8429c8bda46a57e4efc142babf31b4a4a2b68e365807cae8"
        ),
        .binaryTarget(
            name: "Libavdevice",
            url: "https://github.com/endpne/MPVKit/releases/download/0.40.0/Libavdevice.xcframework.zip",
            checksum: "1b5e2a000167e2fe78fddb03df9bd14ba37dbf8db3b8f33ddfdcfecda1d30b52"
        ),
        .binaryTarget(
            name: "Libavformat",
            url: "https://github.com/endpne/MPVKit/releases/download/0.40.0/Libavformat.xcframework.zip",
            checksum: "5a15a628d7e27d2f127a74825d00dc4d5b91f917e9cd612db1a1b9dbe4e62fa0"
        ),
        .binaryTarget(
            name: "Libavfilter",
            url: "https://github.com/endpne/MPVKit/releases/download/0.40.0/Libavfilter.xcframework.zip",
            checksum: "2d5dcb9a8ce3cd3a24b909eba45133bead67c846e62c1b80a132ac791ae9a797"
        ),
        .binaryTarget(
            name: "Libavutil",
            url: "https://github.com/endpne/MPVKit/releases/download/0.40.0/Libavutil.xcframework.zip",
            checksum: "b22b876f72ad75426d48934436e6a893b3b1f53effd9b0d93bd59f05380d0e63"
        ),
        .binaryTarget(
            name: "Libswresample",
            url: "https://github.com/endpne/MPVKit/releases/download/0.40.0/Libswresample.xcframework.zip",
            checksum: "2782deded39bd925f401c1e6d851c1a92aa2c3dab1bbb41ffcfb8fdeb837ab1f"
        ),
        .binaryTarget(
            name: "Libswscale",
            url: "https://github.com/endpne/MPVKit/releases/download/0.40.0/Libswscale.xcframework.zip",
            checksum: "b797cb767aa2a94292d2bb1adac3ddff95516316307120e2fe605c8af406b298"
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
            url: "https://github.com/endpne/MPVKit/releases/download/0.40.0/Libbluray.xcframework.zip",
            checksum: "26dd024b2e903a16cee2df97a48cac897e3328a8fb519a00d85db3da89fb5b1d"
        ),

        .binaryTarget(
            name: "Libmpv",
            url: "https://github.com/endpne/MPVKit/releases/download/0.40.0/Libmpv.xcframework.zip",
            checksum: "8d02f1306f5c32afc0e6ff3d3dd2ad678a4b583552a005f2821f97122536ef26"
        ),

        .binaryTarget(
            name: "MPVKit",
            url: "https://github.com/endpne/MPVKit/releases/download/0.40.0/MPVKit.xcframework.zip",
            checksum: "b7450f3a6d1112f7e68a8aaf1029333f7c3121593de65e43f7fdc92a5dd15192"
        ),
        //AUTO_GENERATE_TARGETS_END//
    ]
)
