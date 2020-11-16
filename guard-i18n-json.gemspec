# frozen_string_literal: true

require "./lib/guard/i18n_json"

Gem::Specification.new do |spec|
  spec.name          = "guard-i18n-json"
  spec.version       = Guard::I18nJson::VERSION
  spec.authors       = ["Nando Vieira"]
  spec.email         = ["me@fnando.com"]
  spec.required_ruby_version = Gem::Requirement.new(">= 2.6.0")

  spec.summary       = "guard-i18n-json automatically exports your I18n " \
                        "translations as JSON files"
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/fnando/guard-i18n-json"
  spec.license       = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`
      .split("\x0")
      .reject {|f| f.match(%r{^(test|spec|features)/}) }
  end

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) {|f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "guard"
  spec.add_dependency "guard-compat"
  spec.add_dependency "i18n-json"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rubocop"
  spec.add_development_dependency "rubocop-fnando"
end
