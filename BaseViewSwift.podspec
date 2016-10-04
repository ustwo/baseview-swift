Pod::Spec.new do |spec|
  spec.name = 'BaseViewSwift'
  spec.version = '1.0.0'
  spec.license = 'MIT'
  spec.summary = 'An organizational tool for writing custom views using UIKit.'
  spec.homepage = 'https://github.com/ustwo/baseview-swift'
  spec.authors = {
    'Shagun Madhikarmi' => 'shagun@ustwo.com',
    'Aaron McTavish' => 'aamct@ustwo.com'
  }
  spec.source = {
    :git => 'https://github.com/ustwo/baseview-swift.git',
    :tag => 'v1.0.0'
  }
  spec.ios.deployment_target = '8.3'
  spec.source_files = 'Sources/*.swift'
  spec.requires_arc = true
end
