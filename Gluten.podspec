Pod::Spec.new do |s|
  s.name = 'Gluten'
  s.version = '0.2'
  s.license = 'MIT'
  s.summary = "Unify XIB with it's code."
  s.homepage = 'https://github.com/wilbertliu/Gluten'
  s.social_media_url = 'https://twitter.com/wilbertliu'
  s.authors = { 'Wilbert Liu' => 'wilbertliu@gmail.com' }
  s.source = { :git => 'https://github.com/wilbertliu/Gluten.git', :tag => '0.2' }
  s.ios.deployment_target = '8.0'
  s.source_files = 'Gluten', 'Gluten/**/*.{h,m,swift}'
end
