# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "musicshare-jekyll-theme"
  spec.version       = "0.0.1"
  spec.authors       = ["bertrandkeller"]
  spec.email         = ["bertrand.keller@gmail.com"]

  spec.summary       = "Share music"
  spec.homepage      = "https://github.com/bertrandkeller/music-share"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select do |f|
    f.match(%r{^(assets|_(includes|layouts|sass)/|(LICENSE|README)((\.(txt|md|markdown)|$)))}i)
  end

  spec.add_development_dependency "jekyll", "~> 3.7"
  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
end
