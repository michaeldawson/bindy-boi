lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "bindy/boi/version"

Gem::Specification.new do |spec|
  spec.name          = "bindy-boi"
  spec.version       = Bindy::Boi::VERSION
  spec.authors       = ["Michael Dawson"]
  spec.email         = ["hi@michaeldawson.com.au"]
  spec.summary       = "Adds missing bindy.boi alias to Pry"
  spec.description   = "bindy.boi method does not work by default with Pry. Fix this bug by restoring bindy.boi functionality."
  spec.license       = "MIT"
  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
