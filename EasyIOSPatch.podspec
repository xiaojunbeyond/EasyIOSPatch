Pod::Spec.new do |s|
  s.name         = "EasyIOSPatch"
  s.version      = "2.2.1"
  s.summary      = "A new generation of development framework based on Model-View-ViewModel"
  s.homepage     = "https://github.com/xiaojunbeyond/EasyIOSPatch"
  s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "xiaojunbeyond" => "xiaojunkingwolf@aliyun.com" }
  s.platform     = :ios, "6.0"
  s.ios.deployment_target = "6.0"
  s.source       = { :git => "https://github.com/xiaojunbeyond/EasyIOSPatch.git", :tag => "2.2.1" }
  s.requires_arc          = true
  s.framework             = "CoreFoundation","Foundation","CoreGraphics","Security","UIKit"
  s.library		= "z.1.1.3","stdc++","sqlite3"
  s.subspec 'Easy' do |sp|
    sp.source_files = '*.{h,m,mm}','Easy/**/*.{h,m,mm}','Extend/**/*.{h,m,mm}'
    sp.resources   = "Extend/**/*.{png}"
    sp.requires_arc = true
    sp.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libz, $(SDKROOT)/usr/include/libxml2', 'CLANG_CXX_LANGUAGE_STANDARD' => 'gnu++0x', 'CLANG_CXX_LIBRARY' => 'libstdc++', 'CLANG_WARN_DIRECT_OBJC_ISA_USAGE' => 'YES'}
    sp.dependency 'ReactiveCocoa'
    sp.dependency 'MBProgressHUD'
    sp.dependency 'MojoDatabase'
    sp.dependency 'TMCache'
    sp.dependency 'UIActivityIndicator-for-SDWebImage'
    sp.dependency 'AFNetworking'
    sp.dependency 'GCDObjC'
    sp.dependency 'FLKAutoLayout','0.1.1'
    sp.dependency 'FontIcon'
    sp.prefix_header_contents = '#import "swift-bridge.h"'
  end
end
