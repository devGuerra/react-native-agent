require 'json'
version = JSON.parse(File.read('../package.json'))["version"]

Pod::Spec.new do |s|

  s.name         = "ADEUMReactNative"
  s.version      = version
  s.summary      = "Real User Monitoring for React Native with AppDynamics"
  s.homepage     = "https://docs.appdynamics.com"
  s.license      = "Apache-2.0"
  s.author       = { "AppDynamics" => "info@appdynamics.com" }
  s.ios.deployment_target = '9.0'
  s.tvos.deployment_target = '9.0'
  s.source         = { :git => "https://github.com/devGuerra/react-native-agent/", :tag => "v#{s.version}" }
  s.source_files  = "ADEUMReactNative/**/*.{h,m}"
  s.static_framework = true
  s.preserve_paths = "**/*.js"
  s.dependency "React"

end

  