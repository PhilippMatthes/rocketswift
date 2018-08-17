Pod::Spec.new do |s|

s.platform = :ios
s.ios.deployment_target = "9.0"
s.name = "RocketSwift"
s.summary = "3...2...1...Liftoff!"
s.requires_arc = true

s.swift_version = "4.1"


s.version = "1.0.1"

s.license = { :type => "MIT", :file => "LICENSE.md" }

s.author = { "Philipp Matthes" => "rocketswift@philippmatth.es" }


s.homepage = "https://github.com/PhilippMatthes/rocketswift"

s.source = { :git => "https://github.com/PhilippMatthes/rocketswift.git", :tag => "#{s.version}"}

s.dependency 'Material'
s.dependency 'Motion'

s.source_files = "RocketSwift/**"

end
