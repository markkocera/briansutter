activate :automatic_image_sizes
activate :livereload

activate :i18n, mount_at_root: :nl

activate :blog do |blog|
  blog.prefix = ":lang"
  blog.sources = "projects/:title.html"
  blog.permalink = ":title.html"
end

activate :directory_indexes
set :relative_links, false

require 'slim'
Slim::Engine.disable_option_validator!

activate :protect_emails

set :css_dir, 'assets/stylesheets'
set :js_dir, 'assets/javascripts'
set :images_dir, 'assets/images'
set :fonts_dir, 'assets/fonts'

configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :relative_assets
end

activate :deploy do |deploy|
  deploy.method = :git
  deploy.build_before = true
end
