# AFWalkthrough - Alamofire Notes with playgrounds


This project was developed using CocoaPods.

> CocoaPods 1.1.0+ is required to build AFWalkthrough and for the playgrounds to work

To integrate Alamofire into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '10.0'
use_frameworks!

target 'AFWalkthrough' do
    pod 'Alamofire', '~> 4.4'
end
```

Then, run the following command:

```bash
$ pod install
```
