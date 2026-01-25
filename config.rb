# Middleman Configuration
# https://middlemanapp.com/basics/configure/

# Activate and configure extensions
activate :livereload

# Layouts
set :layout, :default

# Paths
set :css_dir, 'assets/css'
set :js_dir, 'assets/js'
set :images_dir, 'assets/images'

# Build-specific configuration
configure :build do
  # Minify CSS on build
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

  # Enable cache buster
  activate :asset_hash

  # Set the base path for GitHub Pages project site
  # This ensures all links work correctly when deployed to /fracp-ch/ subdirectory
  set :http_prefix, '/fracp-ch'
end

# Site settings
set :site_title, 'FRACP - Fédération Romande d\'Agriculture Contractuelle de Proximité'
set :site_email, 'info@fracp.ch'
set :map_url, 'https://map.fracp.ch'

# Pretty URLs (directory indexes)
activate :directory_indexes

# Helpers
helpers do
  def site_title
    config[:site_title]
  end

  def site_email
    config[:site_email]
  end

  def map_url
    config[:map_url]
  end

  def current_year
    Time.now.year
  end

  def active_link_class(path)
    current_page.path == path ? 'active' : ''
  end
end
