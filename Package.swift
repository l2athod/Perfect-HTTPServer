// swift-tools-version:4.1
// Generated automatically by Perfect Assistant 2
// Date: 2018-03-28 18:54:02 +0000
import PackageDescription

let package = Package(
	name: "PerfectHTTPServer",
	products: [
		.library(name: "PerfectHTTPServer", targets: ["PerfectHTTPServer"])
	],
	dependencies: [
		.package(url: "https://github.com/l2athod/Perfect-Net.git", from: "1.0.0"),
		.package(url: "https://github.com/l2athod/Perfect-HTTP.git", from: "1.0.0"),
		.package(url: "https://github.com/l2athod/Perfect-CZlib-src.git", from: "1.0.0")
	],
	targets: [
		.target(name: "PerfectCHTTPParser", dependencies: []),
		.target(name: "PerfectHTTPServer", dependencies: ["PerfectCHTTPParser", "PerfectNet", "PerfectHTTP", "PerfectCZlib"]),
		.testTarget(name: "PerfectHTTPServerTests", dependencies: ["PerfectHTTPServer"])
	]
)
