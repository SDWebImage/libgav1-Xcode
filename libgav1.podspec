#
# Be sure to run `pod lib lint TestLibrary.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'libgav1'
  s.version          = '0.16.3'
  s.summary          = 'libgav1 is a Main profile (0) & High profile (1) compliant AV1 decoder'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
libgav1 is a Main profile (0) & High profile (1) compliant AV1 decoder. More information on the AV1 video format can be found at aomedia.org.
                       DESC

  s.homepage         = 'https://chromium.googlesource.com/codecs/libgav1/'
  s.license          = { :type => 'Apache 2.0' }
  s.author           = { 'Google' => 'https://www.google.com' }
  s.source           = { :git => 'https://github.com/SDWebImage/libgav1-Xcode.git', :tag => s.version.to_s, :submodules => true }

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.10'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '2.0'

  s.subspec 'gav1' do |ss|
    ss.source_files = "libgav1/src/**/*.{h,c,cc,cpp}"
    ss.public_header_files = "libgav1/src/gav1/*.h"
    ss.exclude_files = "libgav1/src/dsp", "libgav1/src/post_filter"
  end

  # Hack to fix libgav1's same source file in different folder name like `cdef.cc`
  s.subspec 'dsp' do |ss|
    ss.dependency 'libgav1/gav1'
    ss.source_files = "libgav1/src/dsp/**/*.{h,c,cc,cpp}"
    ss.private_header_files = "libgav1/src/dsp/**/*.h"
    ss.exclude_files = "libgav1/src/dsp/average_blend_test.cc", "libgav1/src/dsp/cdef_test.cc", "libgav1/src/dsp/convolve_test.cc", "libgav1/src/dsp/distance_weighted_blend_test.cc", "libgav1/src/dsp/dsp_test.cc", "libgav1/src/dsp/intra_edge_test.cc", "libgav1/src/dsp/intrapred_cfl_test.cc", "libgav1/src/dsp/intrapred_directional_test.cc", "libgav1/src/dsp/intrapred_filter_test.cc", "libgav1/src/dsp/intrapred_test.cc", "libgav1/src/dsp/inverse_transform_test.cc", "libgav1/src/dsp/loop_filter_test.cc", "libgav1/src/dsp/loop_restoration_test.cc", "libgav1/src/dsp/mask_blend_test.cc", "libgav1/src/dsp/motion_field_projection_test.cc", "libgav1/src/dsp/motion_vector_search_test.cc", "libgav1/src/dsp/obmc_test.cc", "libgav1/src/dsp/super_res_test.cc", "libgav1/src/dsp/warp_test.cc", "libgav1/src/dsp/weight_mask_test.cc"
  end

  s.subspec 'post_filter' do |ss|
    ss.dependency 'libgav1/gav1'
    ss.source_files = "libgav1/src/post_filter/**/*.{h,c,cc,cpp}"
    ss.private_header_files = "libgav1/src/post_filter/**/*.h"
  end

  s.user_target_xcconfig = {
    'HEADER_SEARCH_PATHS' => '$(inherited) ${PODS_ROOT}/libgav1/include',
  }
  s.pod_target_xcconfig = {
    'HEADER_SEARCH_PATHS' => '$(inherited) ${PODS_ROOT}/libgav1/libgav1 ${PODS_TARGET_SRCROOT}/libgav1 ${PODS_ROOT}/libgav1/include ${PODS_TARGET_SRCROOT}/include',
    'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) LIBGAV1_THREADPOOL_USE_STD_MUTEX=1 LIBGAV1_MAX_BITDEPTH=10',
    'WARNING_CFLAGS' => '$(inherited) -Wno-documentation -Wno-conditional-uninitialized -Wno-strict-prototypes -Wno-comma'
  }
  s.preserve_paths = 'libgav1', 'include'
  s.libraries = 'c++'
  s.default_subspecs = 'gav1', 'dsp', 'post_filter'
end
