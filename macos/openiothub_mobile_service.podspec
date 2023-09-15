#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint openiothub_mobile_service.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'openiothub_mobile_service'
  s.version          = '0.0.1'
  s.summary          = 'For OpenIoTHub mobile APP background service'
  s.description      = <<-DESC
For OpenIoTHub mobile APP background service
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }

  # This will ensure the source files in Classes/ are included in the native
  # builds of apps using this FFI plugin. Podspec does not support relative
  # paths, so Classes contains a forwarder C file that relatively imports
  # `../src/*` so that the C sources can be shared among all target platforms.
  s.source           = { :path => '.' }
  s.source_files     = 'Classes/**/*'
  s.dependency 'FlutterMacOS'

  s.platform = :osx, '10.11'
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
  s.swift_version = '5.0'

  s.dependency 'OpenIoTHubMobile' , '0.0.4'
  s.static_framework = true

#     s.preserve_paths = 'OpenIoTHubMobile.xcframework/**/*'
#     s.xcconfig =  {'OTHER_LDFLAGS' => '-framework OpenIoTHubMobile'}
#     s.vendored_frameworks = 'OpenIoTHubMobile.xcframework'
#     s.libraries = "resolv.9", "resolv"
end
