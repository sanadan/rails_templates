# slim
gem 'slim-rails'
gem 'html2slim', require: false

after_bundle do
  # erb to slim
  run( "for i in app/views/**/*.erb; do erb2slim $i ${i%erb}slim && rm $i; done" )

  # Setup git-flow
  git add: "."
  git commit: %Q{ -m 'Initial commit' }
  git flow: 'init -d'
end

