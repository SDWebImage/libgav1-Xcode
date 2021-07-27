// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "libgav1",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "libgav1",
            targets: ["libgav1"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "libgav1",
            dependencies: [],
            path: ".",
            exclude: ["libgav1/src/dsp/arm", "libgav1/src/dsp/x86", "libgav1/src/dsp/average_blend_test.cc", "libgav1/src/dsp/cdef_test.cc", "libgav1/src/dsp/convolve_test.cc", "libgav1/src/dsp/distance_weighted_blend_test.cc", "libgav1/src/dsp/dsp_test.cc", "libgav1/src/dsp/intra_edge_test.cc", "libgav1/src/dsp/intrapred_cfl_test.cc", "libgav1/src/dsp/intrapred_directional_test.cc", "libgav1/src/dsp/intrapred_filter_test.cc", "libgav1/src/dsp/intrapred_test.cc", "libgav1/src/dsp/inverse_transform_test.cc", "libgav1/src/dsp/loop_filter_test.cc", "libgav1/src/dsp/loop_restoration_test.cc", "libgav1/src/dsp/mask_blend_test.cc", "libgav1/src/dsp/motion_field_projection_test.cc", "libgav1/src/dsp/motion_vector_search_test.cc", "libgav1/src/dsp/obmc_test.cc", "libgav1/src/dsp/super_res_test.cc", "libgav1/src/dsp/warp_test.cc", "libgav1/src/dsp/weight_mask_test.cc"],
            sources: ["libgav1/src", "libgav1/src/dsp/generate"],
            publicHeadersPath: "include",
            cSettings: [.headerSearchPath("generate"), .headerSearchPath("libgav1"), .headerSearchPath("libgav1/src"), .define("LIBGAV1_THREADPOOL_USE_STD_MUTEX", to: "1"), .define("LIBGAV1_MAX_BITDEPTH", to: "10")]
        )
    ],
    cLanguageStandard: .gnu11,
    cxxLanguageStandard: .gnucxx14
)
