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
                "Libavcodec", "Libavfilter", "Libavformat", "Libavutil", "Libswresample", "Libswscale",
                "Libssl", "Libcrypto", "Libass", "Libfreetype", "Libfribidi", "Libharfbuzz",
                "MoltenVK", "Libshaderc-combined", "lcms2", "Libplacebo", "Libdovi", "Libunibreak",
                "gmp", "nettle", "hogweed", "gnutls", "Libdav1d"
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
                "Libavcodec-GPL", "Libavfilter-GPL", "Libavformat-GPL", "Libavutil-GPL", "Libswresample-GPL", "Libswscale-GPL",
                "Libssl", "Libcrypto", "Libass", "Libfreetype", "Libfribidi", "Libharfbuzz",
                "MoltenVK", "Libshaderc-combined", "lcms2", "Libplacebo", "Libdovi", "Libunibreak",
                "Libsmbclient", "gmp", "nettle", "hogweed", "gnutls", "Libdav1d"
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
            url: "https://github.com/endpne/MPVKit/releases/download/0.38.0/Libmpv-GPL.xcframework.zip",
            checksum: "6cabbe0e9c7e1ea8e759494bdde4b986e3afcc9a70bd63be607b6c0198183e50"
        ),
        .binaryTarget(
            name: "Libavcodec-GPL",
            url: "https://github.com/endpne/MPVKit/releases/download/0.38.0/Libavcodec-GPL.xcframework.zip",
            checksum: "6cf0b781747d9d71b7ee9d6964f984442fee3c90a01d7d13881a01a46b0f226a"
        ),
        .binaryTarget(
            name: "Libavformat-GPL",
            url: "https://github.com/endpne/MPVKit/releases/download/0.38.0/Libavformat-GPL.xcframework.zip",
            checksum: "23810377038880674079f3e74fd4447ec4d3432d6c3f228ecf79c72c579412a3"
        ),
        .binaryTarget(
            name: "Libavfilter-GPL",
            url: "https://github.com/endpne/MPVKit/releases/download/0.38.0/Libavfilter-GPL.xcframework.zip",
            checksum: "c6df201d6cfec0109e9bc3c481a337cdb03a5759a01eec8b5335c71110345a48"
        ),
        .binaryTarget(
            name: "Libavutil-GPL",
            url: "https://github.com/endpne/MPVKit/releases/download/0.38.0/Libavutil-GPL.xcframework.zip",
            checksum: "c0de600d8f1e5e9df3c8d2621c22f039d8006fa5caa035e63988204fa2297acc"
        ),
        .binaryTarget(
            name: "Libswresample-GPL",
            url: "https://github.com/endpne/MPVKit/releases/download/0.38.0/Libswresample-GPL.xcframework.zip",
            checksum: "d4c9f43542901dcd6623d3ed8ddfe62cc99122db4746af9415395171b02d0ea9"
        ),
        .binaryTarget(
            name: "Libswscale-GPL",
            url: "https://github.com/endpne/MPVKit/releases/download/0.38.0/Libswscale-GPL.xcframework.zip",
            checksum: "90bcc3141de90c0e2b3abac7d6ca9e2e05caf3c5c29a9b5fa82d51e58a93d568"
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
            checksum: "b1580d0ac6921dd5f7b174c8d1072311240d216ba9fe85e55ae813bf30b2b2db"
        ),

        .binaryTarget(
            name: "Libdovi",
            url: "https://github.com/endpne/libdovi-build/releases/download/3.3.0/Libdovi.xcframework.zip",
            checksum: "ebb8651856b6843dcb3f38cec99a5014554475243950c6f215a1f37872b3141b"
        ),

        .binaryTarget(
            name: "MoltenVK",
            url: "https://github.com/endpne/moltenvk-build/releases/download/1.2.9/MoltenVK.xcframework.zip",
            checksum: "bf0a711c2b08daad520f2108061fa24437d41e450e0848e3262573b3c283cd4b"
        ),

        .binaryTarget(
            name: "Libshaderc-combined",
            url: "https://github.com/endpne/libshaderc-build/releases/download/2024.1.0/Libshaderc-combined.xcframework.zip",
            checksum: "a321e115382e78b30208017a9915bc426132b391e81e07f1801e42a77863371f"
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
            url: "https://github.com/endpne/MPVKit/releases/download/0.38.0/Libavcodec.xcframework.zip",
            checksum: "48de8e5e555b19412b5473ea5399defd26c8439bc5a729c5cea891b58a8476e3"
        ),
        .binaryTarget(
            name: "Libavformat",
            url: "https://github.com/endpne/MPVKit/releases/download/0.38.0/Libavformat.xcframework.zip",
            checksum: "1947f25a275737a8fefaef329dd1da7f41de1c391b5dfa2e35220e3b856d9ebf"
        ),
        .binaryTarget(
            name: "Libavfilter",
            url: "https://github.com/endpne/MPVKit/releases/download/0.38.0/Libavfilter.xcframework.zip",
            checksum: "52161e6d25800d786705d5f57fff9979201bca447251dc69f54c567be2b434e1"
        ),
        .binaryTarget(
            name: "Libavutil",
            url: "https://github.com/endpne/MPVKit/releases/download/0.38.0/Libavutil.xcframework.zip",
            checksum: "9de406b7935e2faa8c92fb07296a8d448e9511785b8f98736644f39c6464b9ed"
        ),
        .binaryTarget(
            name: "Libswresample",
            url: "https://github.com/endpne/MPVKit/releases/download/0.38.0/Libswresample.xcframework.zip",
            checksum: "4d9cfa7882a2a1f5c2c55d327a8b4e18a68d8473688b8135c52d0db9886fb8d8"
        ),
        .binaryTarget(
            name: "Libswscale",
            url: "https://github.com/endpne/MPVKit/releases/download/0.38.0/Libswscale.xcframework.zip",
            checksum: "b0c06dc9abf99af654660f3548cdc28f7723f67bbeabec7530994d0db6f4e721"
        ),

        .binaryTarget(
            name: "Libuchardet",
            url: "https://github.com/endpne/libuchardet-build/releases/download/0.0.8/Libuchardet.xcframework.zip",
            checksum: "0cfd3747a84f5460fb10410047e8fd0d7908ce0734dacb1bfa5a39808ebd5984"
        ),

        .binaryTarget(
            name: "Libluajit",
            url: "https://github.com/endpne/libluajit-build/releases/download/2.1.0/Libluajit.xcframework.zip",
            checksum: "e4f7d075ca044a3591dddb0a9c782fc10239a5f426b7488cebc0645f2de8a56a"
        ),

        .binaryTarget(
            name: "Libbluray",
            url: "https://github.com/endpne/MPVKit/releases/download/0.38.0/Libbluray.xcframework.zip",
            checksum: "717103de7ef10a96ae220c76b7e0f77f3c454f368f67dcae53550cdd638088a9"
        ),

        .binaryTarget(
            name: "Libmpv",
            url: "https://github.com/endpne/MPVKit/releases/download/0.38.0/Libmpv.xcframework.zip",
            checksum: "6e7d9fe0443b4d875344658cba6e736ff25f4d809dafbaf7f32562810f56a8be"
        ),
        //AUTO_GENERATE_TARGETS_END//
    ]
)
