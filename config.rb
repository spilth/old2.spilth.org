activate :directory_indexes

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'

activate :blog do |blog|
  blog.prefix = "blog"
end

activate :s3_sync do |s3_sync|
  s3_sync.bucket = 'spilth.org'
  s3_sync.acl    = 'public-read'
end
