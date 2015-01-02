
require "lib/application_helper"
helpers ApplicationHelper
###
# Compass
###

# Change Compass configuration
compass_config do |config|
  config.output_style = :compact
  config.line_comments = false
end


set :file_watcher_ignore, [
    /^\.idea\//,
    /^\.bundle\//,
    /^\.sass-cache\//,
    /^\.git\//,
    /^\.gitignore$/,
    /\.DS_Store/,
    /^build\//,
    /^\.rbenv-.*$/,
    /^Gemfile$/,
    /^Gemfile\.lock$/,
    /~$/,
    /(^|\/)\.?#/
]
activate :livereload
###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", :locals => {
#  :which_fake_page => "Rendering a fake page with a local variable" }

###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Reload the browser automatically whenever files change
# configure :development do
#   activate :livereload
# end

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end
#set :sass_dir, "sass"

set :css_dir, 'assets/stylesheets'

set :js_dir, 'assets/javascripts'

set :images_dir, 'assets/images'


# Build-specific configuration
configure :build do
  #http://stackoverflow.com/questions/9339024/using-compass-generated-sprites-in-middleman-how-to-leave-out-sprite-source-fil
  # ignore "source/images/icons/*.png"

  # For example, change the Compass output style for deployment
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript

  # Enable cache buster
  # activate :asset_hash

  # Use relative URLs
  # activate :relative_assets

  # Or use a different image path
  # set :http_prefix, "/Content/images/"
end



activate :deploy do |deploy|
  deploy.method   = :sftp
  deploy.host     = "wusifo"
  deploy.port     = 22
  deploy.path     = "/home/deploy/deploy/growcn/crazyenglish365"
  # Optional Settings
  # deploy.user     = "deploy" # no default
  # deploy.password = "secret" # no default
end