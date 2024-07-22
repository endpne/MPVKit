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
                "MoltenVK", "Libshaderc_combined", "lcms2", "Libplacebo", "Libdovi", "Libunibreak",
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
                "MoltenVK", "Libshaderc_combined", "lcms2", "Libplacebo", "Libdovi", "Libunibreak",
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
            checksum: "e804d3e91804fa4e9ecff97767bcab051d7eedf254488dd4f9a91121056b34f8"
        ),
        .binaryTarget(
            name: "Libavcodec-GPL",
            url: "https://github.com/endpne/MPVKit/releases/download/0.38.0/Libavcodec-GPL.xcframework.zip",
            checksum: "9eccc97dff7fc869708f5968a0c69764fc128914cbd9cf31c0739c0c4f034ceb"
        ),
        .binaryTarget(
            name: "Libavformat-GPL",
            url: "https://github.com/endpne/MPVKit/releases/download/0.38.0/Libavformat-GPL.xcframework.zip",
            checksum: "3a0a9125cc70da1f4d589d2b96bf9a9ab6804aae5956f1892bc6cd031007590c"
        ),
        .binaryTarget(
            name: "Libavfilter-GPL",
            url: "https://github.com/endpne/MPVKit/releases/download/0.38.0/Libavfilter-GPL.xcframework.zip",
            checksum: "05298caa833dc79a002463d5b3fe500b233a45efe6aaa0588444d648d6953f69"
        ),
        .binaryTarget(
            name: "Libavutil-GPL",
            url: "https://github.com/endpne/MPVKit/releases/download/0.38.0/Libavutil-GPL.xcframework.zip",
            checksum: "54eeff1c986afeed3d291805d3b3c6ea1b0155cd35a19451478ac290572f742c"
        ),
        .binaryTarget(
            name: "Libswresample-GPL",
            url: "https://github.com/endpne/MPVKit/releases/download/0.38.0/Libswresample-GPL.xcframework.zip",
            checksum: "919f743f4c7bb5dd40b04f784d252043f9b5bbf275ecf03140532d3ca7099639"
        ),
        .binaryTarget(
            name: "Libswscale-GPL",
            url: "https://github.com/endpne/MPVKit/releases/download/0.38.0/Libswscale-GPL.xcframework.zip",
            checksum: "39022fc0d78bf2c492e66b087c2fe3a1a4f6fcc7a0c3f281249a42faac04def0"
        ),
        //AUTO_GENERATE_TARGETS_BEGIN//

        .binaryTarget(
            name: "Libcrypto",
            url: "https://github.com/mpvkit/openssl-build/releases/download/3.2.0/Libcrypto.xcframework.zip",
            checksum: "89989ea14f7297d98083eb8adfba9b389f5b4886cb54fb3d5b6e8b915b7adf1d"
        ),
        .binaryTarget(
            name: "Libssl",
            url: "https://github.com/mpvkit/openssl-build/releases/download/3.2.0/Libssl.xcframework.zip",
            checksum: "46ad8e8fa5a6efe7bd31c9b3c56b20c1bc29a581083588d86e941d261d7dbe98"
        ),

        .binaryTarget(
            name: "gmp",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.3/gmp.xcframework.zip",
            checksum: "defd5623e6786543588001b8f33026395960a561540738deb6df6996d39f957d"
        ),

        .binaryTarget(
            name: "nettle",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.3/nettle.xcframework.zip",
            checksum: "c3b8f506fa32bcb3f9bf65096b0556c4f5973f846ee964577d783edbe8e6969d"
        ),
        .binaryTarget(
            name: "hogweed",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.3/hogweed.xcframework.zip",
            checksum: "47a34e7877f7ebd9175f5645059030e553276faa9a21b91e29fb7463b94e8daf"
        ),

        .binaryTarget(
            name: "gnutls",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.3/gnutls.xcframework.zip",
            checksum: "5f5cf903a2d52157c29ad304260709f618ce086afea02061241982f8425a6fb0"
        ),

        .binaryTarget(
            name: "Libunibreak",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3/Libunibreak.xcframework.zip",
            checksum: "430ed1a8ff1a230bd93b6868021cde2aafb23c8cb2d586525836cac47c4f310f"
        ),

        .binaryTarget(
            name: "Libfreetype",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3/Libfreetype.xcframework.zip",
            checksum: "300d2966c914e06f0211d8da0ea6208a345709b888e9cbbf1cdd94df26330359"
        ),

        .binaryTarget(
            name: "Libfribidi",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3/Libfribidi.xcframework.zip",
            checksum: "4a3122a2027f021937ed0fa07173dca7f2c1c4c4202b7caf8043fa80408c0953"
        ),

        .binaryTarget(
            name: "Libharfbuzz",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3/Libharfbuzz.xcframework.zip",
            checksum: "f607773598caa72435d8b19ce6a9d54fa7f26cde126b6b66c0a3d2804f084c68"
        ),

        .binaryTarget(
            name: "Libass",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3/Libass.xcframework.zip",
            checksum: "af24cd1429069153f0ca5c650e0b374c27ae38283aca47cbbbc9edb3165b182e"
        ),

        .binaryTarget(
            name: "Libsmbclient",
            url: "https://github.com/mpvkit/libsmbclient-build/releases/download/4.15.13/Libsmbclient.xcframework.zip",
            checksum: "589db9c241e6cc274f2825bee542add273febd0666ebd7ea8a402574ed76e9af"
        ),

        .binaryTarget(
            name: "Libdovi",
            url: "https://github.com/mpvkit/libdovi-build/releases/download/3.3.0/Libdovi.xcframework.zip",
            checksum: "ca4382ea4e17103fbcc979d0ddee69a6eb8967c0ab235cb786ffa96da5f512ed"
        ),

        .binaryTarget(
            name: "MoltenVK",
            url: "https://github.com/mpvkit/moltenvk-build/releases/download/1.2.9/MoltenVK.xcframework.zip",
            checksum: "02dd7f51814855b7db9eacd883042b3e9481eb658de6bc63290af80149f2b94f"
        ),

        .binaryTarget(
            name: "Libshaderc_combined",
            url: "https://github.com/mpvkit/libshaderc-build/releases/download/2024.1.0/Libshaderc_combined.xcframework.zip",
            checksum: "f6267f62881e9496608069266ba52b025bcfcd6ec5859d02d780feeabfacc947"
        ),

        .binaryTarget(
            name: "lcms2",
            url: "https://github.com/mpvkit/libplacebo-build/releases/download/7.349.0/lcms2.xcframework.zip",
            checksum: "bd2c27366f8b7adfe7bf652a922599891c55b82f5c519bcc4eece1ccff57c889"
        ),

        .binaryTarget(
            name: "Libplacebo",
            url: "https://github.com/mpvkit/libplacebo-build/releases/download/7.349.0/Libplacebo.xcframework.zip",
            checksum: "f32d20351289a080cd7288742747cd927553fde8c217f63263b838083d07a01a"
        ),

        .binaryTarget(
            name: "Libdav1d",
            url: "https://github.com/mpvkit/libdav1d-build/releases/download/1.4.3/Libdav1d.xcframework.zip",
            checksum: "eccfe37da9418e350bc6c1566890fa5b9585fbb87b8ceb664de77800ef17fe04"
        ),

        .binaryTarget(
            name: "Libavcodec",
            url: "https://github.com/endpne/MPVKit/releases/download/0.38.0/Libavcodec.xcframework.zip",
            checksum: "680a4580eaa8cd41ed14e2b8735982d2fecf2b6dc3dff97de89a1ed2dcbaa3cc"
        ),
        .binaryTarget(
            name: "Libavformat",
            url: "https://github.com/endpne/MPVKit/releases/download/0.38.0/Libavformat.xcframework.zip",
            checksum: "8801087e128e57416f4fa39e24e9971f38aa86a7e998b023bcc2ea1cef2cdbc5"
        ),
        .binaryTarget(
            name: "Libavfilter",
            url: "https://github.com/endpne/MPVKit/releases/download/0.38.0/Libavfilter.xcframework.zip",
            checksum: "0102c5269fa4e125a9a338d6b9831fe2f93b2c9cd31a5a6b94cfac160114e4a4"
        ),
        .binaryTarget(
            name: "Libavutil",
            url: "https://github.com/endpne/MPVKit/releases/download/0.38.0/Libavutil.xcframework.zip",
            checksum: "fc0b0c7d6fd12d597b8e6d1ec3b503ca0d4f4535e6cc5a5788f02f4078aac98a"
        ),
        .binaryTarget(
            name: "Libswresample",
            url: "https://github.com/endpne/MPVKit/releases/download/0.38.0/Libswresample.xcframework.zip",
            checksum: "b936444dac5518e5229431c7e6484d511fc8c6bd4cca87947b5a0b3e859ffcd6"
        ),
        .binaryTarget(
            name: "Libswscale",
            url: "https://github.com/endpne/MPVKit/releases/download/0.38.0/Libswscale.xcframework.zip",
            checksum: "f08b93ba243d6178285bef5a02431b8f63615a644523d8fafd068be6a481d237"
        ),

        .binaryTarget(
            name: "Libuchardet",
            url: "https://github.com/mpvkit/libuchardet-build/releases/download/0.0.8/Libuchardet.xcframework.zip",
            checksum: "80b14d8080c2531ced6d6b234a826c13f0be459a8c751815f68e0eefd34afa30"
        ),

        .binaryTarget(
            name: "Libluajit",
            url: "https://github.com/mpvkit/libluajit-build/releases/download/2.1.0/Libluajit.xcframework.zip",
            checksum: "3765d7c6392b4f9a945b334ed593747b8adb9345078717ecfb6d7d12114a0f9e"
        ),

        .binaryTarget(
            name: "Libbluray",
            url: "https://github.com/endpne/MPVKit/releases/download/0.38.0/Libbluray.xcframework.zip",
            checksum: "3316ac41a471226d79df3a6524229d6dac742bd6581fba3200a32f40a8e24f2a"
        ),

        .binaryTarget(
            name: "Libmpv",
            url: "https://github.com/endpne/MPVKit/releases/download/0.38.0/Libmpv.xcframework.zip",
            checksum: "fab6db52093996bbc8cab73cb68cadd350193d69c22efa28c81fbea3312353ab"
        ),
        //AUTO_GENERATE_TARGETS_END//
    ]
)
