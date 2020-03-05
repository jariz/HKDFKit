Pod::Spec.new do |s|
  s.name         = "HKDFKit"
  s.version      = "0.0.4"
  s.summary      = "HKDFKit provides Objective-C implementations of HKDF."

  s.description  = <<-DESC
                   HKDFKit additionally supports the TextSecure v2 protocol HKDF.
                   DESC

  s.homepage     = "https://github.com/FredericJacobs/HKDFKit"
  s.license      = {:type => 'GNU GENERAL PUBLIC LICENSE V2', :file => 'LICENSE'}
  s.author             = { "Frederic Jacobs" => "github@fredericjacobs.com" }
  s.social_media_url = "https://twitter.com/FredericJacobs"

  s.source       = { :git => "https://github.com/FredericJacobs/HKDFKit.git", :tag => "0.0.3" }

  s.source_files  = 'HKDFKit/HKDFKit/*.{h,m,mm,swift}', 'HKDFKit/Private/*.{h,m,mm,swift}'

  s.public_header_files = 'HKDFKit/HKDFKit/*.h'
#  s.ios.deployment_target = "10.0"
  s.requires_arc = true

  s.dependency 'CocoaLumberjack'
  s.dependency 'SignalCoreKit'

  s.test_spec 'Tests' do |test_spec|
    test_spec.source_files = 'HKDFKit/HKDFKitTests/**/*.{h,m,swift}'
  end
end
