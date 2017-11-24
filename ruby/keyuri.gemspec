
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "keyuri/version"

Gem::Specification.new do |spec|
  spec.name          = "keyuri"
  spec.version       = KeyURI::VERSION
  spec.authors       = ["Tony Arcieri"]
  spec.email         = ["bascule@gmail.com"]
  spec.homepage      = "https://github.com/miscreant/keyuri/"
  spec.summary       = "A URI-based format for encoding cryptographic keys"
  spec.description = <<-DESCRIPTION.strip.gsub(/\s+/, " ")
    KeyURI leverages the URI generic syntax defined in RFC 3986 to provide
    simple and succinct encodings of cryptographic keys, including public
    keys, private/secret keys, and encrypted secret keys with password-based
    key derivation
  DESCRIPTION
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 2.2.2"
  spec.add_development_dependency "bundler", "~> 1.16"
end
