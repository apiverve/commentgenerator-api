Pod::Spec.new do |s|
  s.name             = 'APIVerveCommentGenerator'
  s.version          = '1.2.3'
  s.summary          = 'Comment Generator produces social media comments formatted for text or image posts across positive, negative, and neutral tones.'
  s.description      = <<-'DESC'
Comment Generator produces social media comments formatted for text or image posts across positive, negative, and neutral tones. Each request returns generated comment text with optional emoji support, while paid plans can request batches up to 10.

This iOS/macOS SDK provides a convenient way to access the Comment Generator from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/commentgenerator?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/commentgenerator-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveCommentGenerator/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
