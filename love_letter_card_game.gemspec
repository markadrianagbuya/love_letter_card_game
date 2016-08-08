# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'love_letter_card_game/version'

Gem::Specification.new do |spec|
  spec.name          = "love_letter_card_game"
  spec.version       = LoveLetterCardGame::VERSION
  spec.authors       = ["MJ"]
  spec.email         = ["mark.a@serviceseeking.com.au"]

  spec.summary       = %q{Ruby version of the love letter card game.}
  spec.homepage      = "https://github.com/markadrianagbuya/love_letter_card_game"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
