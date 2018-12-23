# TestBundle

[![CI Status](https://img.shields.io/travis/lizhuoli1126@126.com/TestBundle.svg?style=flat)](https://travis-ci.org/lizhuoli1126@126.com/TestBundle)
[![Version](https://img.shields.io/cocoapods/v/TestBundle.svg?style=flat)](https://cocoapods.org/pods/TestBundle)
[![License](https://img.shields.io/cocoapods/l/TestBundle.svg?style=flat)](https://cocoapods.org/pods/TestBundle)
[![Platform](https://img.shields.io/cocoapods/p/TestBundle.svg?style=flat)](https://cocoapods.org/pods/TestBundle)

## What's for

There seems a CocoaPods (from 1.4.0-1.5.3) issue, which will cause the `resource_bundle` generated bundle identifier missing and become invalid.

The key point to trigger this issue is to make your Pods does not generate a Xcode compile unit target, but only generate a resource target. Like this:


![](./screenshot.png)

Because the generated resource target using the ENV value `PRODUCT_BUNDLE_IDENTIFIER` inside the `Info.plist`, which will be evaluated as empty and then cause the issue.

![](./screenshot2.png)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

TestBundle is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'TestBundle'
```

## Author

lizhuoli1126@126.com, lizhuoli1126@126.com

## License

TestBundle is available under the MIT license. See the LICENSE file for more info.


