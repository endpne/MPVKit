# MPVKit

[![mpv](https://img.shields.io/badge/mpv-v0.39.0-blue.svg)](https://github.com/mpv-player/mpv)
[![ffmpeg](https://img.shields.io/badge/ffmpeg-n7.0.1-blue.svg)](https://github.com/FFmpeg/FFmpeg)
[![license](https://img.shields.io/github/license/endpne/MPVKit)](https://github.com/endpne/MPVKit/main/LICENSE)

> MPVKit is only suitable for learning `libmpv` and will not be maintained too frequently.

`MPVKit` is a collection of tools to use `mpv` in `iOS`, `macOS`, `tvOS`, `visionOS` applications.

It includes scripts to build `mpv` native libraries.

Forked from [kingslay/FFmpegKit](https://github.com/kingslay/FFmpegKit)

## About Metal support

Metal support only a patch version ([#7857](https://github.com/mpv-player/mpv/pull/7857)) and does not officially support it yet. Encountering any issues is not strange. 

## Installation

### Swift Package Manager

```
https://github.com/endpne/MPVKit.git
```

### Choose which version

| Version | License | Note |
|---|---|---|
| MPVKit | LGPL | [FFmpeg details](https://github.com/FFmpeg/FFmpeg/blob/master/LICENSE.md) , [mpv details](https://github.com/mpv-player/mpv/blob/master/Copyright) |
| MPVKit-GPL | GPL | Support samba protocol, same as old MPVKit version |


## How to build

```bash
make build
# or specified platforms (ios,macos,tvos,tvsimulator,isimulator,maccatalyst,xros,xrsimulator)
make build platform=ios,macos
# or build GPL version
make build enable-gpl
# or clean all build temp files and cache
make clean
# or see help
make help
```

## Run default mpv player

```bash
./mpv.sh --input-commands='script-message display-stats-toggle' [url]
./mpv.sh --list-options
```

> Use <kbd>Shift</kbd>+<kbd>i</kbd> to show stats overlay

## Related Projects

* [moltenvk-build](https://github.com/endpne/moltenvk-build)
* [libplacebo-build](https://github.com/endpne/libplacebo-build)
* [libdovi-build](https://github.com/endpne/libdovi-build)
* [libshaderc-build](https://github.com/endpne/libshaderc-build)
* [libluajit-build](https://github.com/endpne/libluajit-build)
* [libass-build](https://github.com/endpne/libass-build)
* [libsmbclient-build](https://github.com/endpne/libsmbclient-build)
* [gnutls-build](https://github.com/endpne/gnutls-build)
* [openssl-build](https://github.com/endpne/openssl-build)

## Donation

If you appreciate my current work, you can buy me a cup of coffee ☕️.

[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/C0C410P7UN)

## License
Because MPVKit compiles FFmpeg and mpv with the GPL license enabled. So MPVKit follow the GPL license.
