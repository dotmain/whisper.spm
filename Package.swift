// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "whisper.spm",
    products: [
        .library(
            name: "whisper",
            targets: ["whisper"]),
        .library(name: "binary-intelligence", targets: ["binary-intelligence"])
    ],
    targets: [
        .target(name: "whisper", dependencies:[], cSettings: [.unsafeFlags(["-O3", "-DGGML_USE_ACCELERATE=1"])]),
        .target(name: "test-objc", dependencies:["whisper"]),
        .target(name: "test-swift", dependencies:["whisper"]),
        .target(name: "binary-intelligence",
                dependencies: ["whisper"])
    ],
    cxxLanguageStandard: CXXLanguageStandard.cxx11
)
