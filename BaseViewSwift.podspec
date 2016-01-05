Pod::Spec.new do |s|
  s.name = 'BaseViewSwift'
  s.version = '1.0.0'
  s.license = 'MIT'
  s.summary = 'An organizational tool for writing custom views using UIKit.'
  s.homepage = 'https://github.com/ustwo/baseview-swift'
  s.authors = { 'Shagun Madhikarmi' => 'shagun@ustwo.com',
                'Aaron McTavish' => 'aamct@ustwo.com',
                'Martin Stolz' => 'martin@ustwo.com' }
  s.source = { :git => 'https://github.com/ustwo/baseview-swift.git', :tag => s.version }

  s.ios.deployment_target = '8.3'

  s.source_files = 'Sources/*.swift'

  s.requires_arc = true
end
