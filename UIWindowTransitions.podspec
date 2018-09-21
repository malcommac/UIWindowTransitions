Pod::Spec.new do |s|
  s.name         = "UIWindowTransitions"
  s.version      = "0.1.2"
  s.summary      = "Animated transitions for UIWindow's rootViewController property"
  s.description  = <<-DESC
    This library allows to execute animated transition when changing the UIWindow's rootViewController property. Animations are done using CoreAnimation.
  DESC
  s.homepage     = "https://github.com/malcommac/UIWindowTransitions"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Daniele Margutti" => "me@danielemargutti.com" }
  s.social_media_url   = ""
  s.ios.deployment_target = "8.0"
  s.source       = { :git => "https://github.com/malcommac/UIWindowTransitions.git", :tag => s.version.to_s }
  s.source_files  = "Sources/**/*"
  s.frameworks  = "Foundation"
  s.swift_version = '4.0'
end
