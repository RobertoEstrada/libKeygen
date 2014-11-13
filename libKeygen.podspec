Pod::Spec.new do |s|
  s.name         = "libKeygen"
  s.version      = "1.0"
  s.summary      = "Library with default key generators for "
  s.license      = 'GPLv3'
  s.author       = { "Roberto Estrada" => "robestradac@gmail.com",
  					         "Rui Araújo" => "ruka.araujo@gmail.com" }
  s.platform     = :ios, '7.0'
  s.source_files = 'src', 'src/**/*.{h,m,mm,cpp}', 'libs/**/*.h'
  s.resources    = ["res/*.txt"]
  s.requires_arc = true
  s.vendored_libraries = 'libs/OpenSSL-iOS/lib/libcrypto.a', 'libs/OpenSSL-iOS/lib/libssl.a', 'libs/Qt5-Core-iOS/lib/libQt5Core.a'
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => "${PODS_ROOT}/#{s.name}/libs/OpenSSL-iOS/include/** ${PODS_ROOT}/#{s.name}/libs/Qt5-Core-iOS/include/**" }
end