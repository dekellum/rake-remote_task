# -*- ruby -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "rake-remote_task"
  s.version = "2.0.6"

  if RUBY_PLATFORM =~ /java/
    s.platform = Gem::Platform.new([nil, "java", nil])
  end

  s.authors = ["Ryan Davis", "Eric Hodel", "Wilson Bilkovich"]
  s.description = "Vlad the Deployer's sexy brainchild is rake-remote_task, extending\nRake with remote task goodness."
  s.email = ["ryand-ruby@zenspider.com", "drbrain@segment7.net", "wilson@supremetyrant.com"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "README.txt"]
  s.files = [ "History.txt", "Manifest.txt", "README.txt", "Rakefile", "lib/rake/remote_task.rb", "lib/rake/test_case.rb", "lib/rake/remote_task/open3.rb", "lib/rake/remote_task/open4.rb", "test/test_rake_remote_task.rb" ]
  s.homepage = "https://github.com/seattlerb/rake-remote_task"
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "hitsquad"
  s.rubygems_version = "1.8.11"
  s.summary = "Vlad the Deployer's sexy brainchild is rake-remote_task, extending Rake with remote task goodness."
  s.test_files = ["test/test_rake_remote_task.rb"]

  s.add_runtime_dependency(%q<rake>, ["~> 0.8"])
  s.add_development_dependency(%q<hoe>, ["~> 2.12"])

  if RUBY_PLATFORM !~ /java/
    s.add_runtime_dependency( 'open4', [ '~> 1.0' ] )
  end
end
