require 'contentful'
require 'yaml'

if File.exists?("#{Rails.root}/config/contentful.yml")
  config = YAML.load_file("#{Rails.root}/config/contentful.yml")[Rails.env]
  $CONTENTFUL = Contentful::Client.new(
                                  space: config["space_id"],
                                       access_token: config["access_token"],
                                       dynamic_entries: :auto,
                                       raise_errors: false
                )
end