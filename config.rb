activate :automatic_image_sizes
activate :directory_indexes
activate :livereload

activate :autoprefixer do |config|
  config.browsers = ['last 2 versions', 'Explorer >= 9']
  config.cascade = false
end

# Gems
require 'slim'
# require 'slim/smart'

# Methods defined in the helpers block are available in templates
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
  # deploy.remote   = 'origin'
  # deploy.branch   = 'gh-pages'
  # deploy.strategy = :force_push
end
