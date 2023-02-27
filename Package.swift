// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "libsecp256k1.swift",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(name: "libsecp256k1", targets: ["libsecp256k1"]),
    ],
    targets: [
        .target(
            name: "libsecp256k1",
            path: "Sources/libsecp256k1",
            exclude: [
                "secp256k1/src/asm",
                "secp256k1/src/testrand.h",
                "secp256k1/src/testrand_impl.h",
                "secp256k1/src/tests.c",
                "secp256k1/src/tests_exhaustive.c",
                "secp256k1/src/bench.h",
                "secp256k1/src/bench.c",
                "secp256k1/src/bench_ecmult.c",
                "secp256k1/src/bench_internal.c",
                "secp256k1/src/precompute_ecmult.c",
                "secp256k1/src/precompute_ecmult_gen.c",
                "secp256k1/src/valgrind_ctime_test.c",
                "secp256k1/src/modules/ecdh/Makefile.am.include",
                "secp256k1/src/modules/recovery/Makefile.am.include",
                "secp256k1/src/modules/schnorrsig/Makefile.am.include",
                "secp256k1/src/modules/extrakeys/Makefile.am.include",
            ],
            sources: [
                "secp256k1/src",
                "secp256k1/include",
                "secp256k1/contrib",
            ],
            publicHeadersPath: "secp256k1/include",
            cSettings: [
                .headerSearchPath("generated"),
            ]
        ),
    ]
)
