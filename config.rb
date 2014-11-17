activate :automatic_image_sizes
activate :livereload

activate :blog do |blog|
  blog.sources = "projects/:title.html"
  blog.permalink = "projects/:title.html"
end

activate :directory_indexes
set :relative_links, true

# Gems
require 'slim'
Slim::Engine.disable_option_validator!

# helpers do
#   def some_helper
#     "Helping"
#   end
# end

set :css_dir, 'assets/stylesheets'
set :js_dir, 'assets/javascripts'
set :images_dir, 'assets/images'
set :fonts_dir, 'assets/fonts'

# Build-specific configuration
configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :relative_assets
end

activate :deploy do |deploy|
  deploy.method = :git
  deploy.build_before = true
  # deploy.remote   = 'origin'
  # deploy.branch   = 'gh-pages'
  # deploy.strategy = :force_push
end
