# libgav1 + Xcode

[![CI Status](http://img.shields.io/travis/SDWebImage/libgav1-Xcode.svg?style=flat)](https://travis-ci.org/SDWebImage/libgav1-Xcode)
[![Version](https://img.shields.io/cocoapods/v/libgav1.svg?style=flat)](http://cocoapods.org/pods/libgav1)
[![License](https://img.shields.io/cocoapods/l/libgav1.svg?style=flat)](http://cocoapods.org/pods/libgav1)
[![Platform](https://img.shields.io/cocoapods/p/libgav1.svg?style=flat)](http://cocoapods.org/pods/libgav1)
[![SwiftPM compatible](https://img.shields.io/badge/SwiftPM-compatible-brightgreen.svg)](https://swift.org/package-manager/)

A wrapper for [libgav1](https://chromium.googlesource.com/codecs/libgav1/) + Xcode project.
This enables CocoaPods && SwiftPM support.

This repo also including the CocoaPods's spec file to use libgav1.

## Requirements

+ iOS 8
+ macOS 10.10
+ tvOS 9.0
+ watchOS 2.0

## Installation

### CocoaPods

libgav1 is available through [CocoaPods](https://github.com/CocoaPods/CocoaPods).

```
pod 'libgav1'
```

### SwiftPM

libgav1 is available through [Swift Package Manager](https://img.shields.io/badge/SwiftPM-compatible-brightgreen.svg).

```swift
let package = Package(
    dependencies: [
        .package(url: "https://github.com/SDWebImage/libgav1-Xcode", from: "0.16.3")
    ],
    // ...
)
```

## Usage

Use libgav1 as you would normally, this is just a repo that adds an Xcode proj.

For Swift Package Manager user, it's recommended to use the modular import instead of C headers.

Note you should use `svt_av1` instead of `libgav1` when using modular import.

+ Objective-C

```objective-c
@import libgav1;
// or if you don't use module
#import <gav1/decoder.h>
```

+ Swift

```swift
import libgav1
```

## License

libgav1 is available under the [Apache License](https://chromium.googlesource.com/codecs/libgav1/+/refs/heads/main/LICENSE).


