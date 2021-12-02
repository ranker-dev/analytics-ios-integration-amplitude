// swift-tools-version:5.3
 // The swift-tools-version declares the minimum version of Swift required to build this package.
 import PackageDescription

 let package = Package(
     name: "Segment_Amplitude",
     platforms: [
         .iOS(.v10),
         .tvOS(.v10),
         .macOS(.v10_13),
     ],
     products: [
         .library(name: "Segment_Amplitude", targets: ["Segment_Amplitude"]),
     ],
     dependencies: [
         .package(name: "Amplitude", url: "https://github.com/amplitude/Amplitude-iOS", .upToNextMinor(from: "8.5.0")),
         .package(name: "Segment", url: "https://github.com/segmentio/analytics-ios", .upToNextMinor(from: "4.1.6")),
     ],
     targets: [
         .target(
             name: "Segment_Amplitude",
             dependencies: ["Amplitude", "Segment"],
             path: "Pod",
             publicHeadersPath: "Classes"
         ),
     ]
)
