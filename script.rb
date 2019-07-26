# This is an automatically generated file.

require 'contentful'

# Define your Credentials
SPACE_ID = 'kk2bw5ojx476'
ACCESS_TOKEN = '7ac531648a1b5e1dab6c18b0979f822a5aad0fe5f1109829b8a197eb2be4b84c'

# Create your Contentful Delivery API Client

client = Contentful::Client.new(
    space: SPACE_ID,
    access_token: ACCESS_TOKEN,
    dynamic_entries: :auto
)

# Fetch all your entries

entries = client.entries

# Print all the entry IDs
puts "Here's the list of your first 100 entries:"
entries.each do |entry|
  puts "\t#{entry.id}"
end

# Feel free to customize this snippet as much as you like.
# To learn more, check out our Ruby Tutorials and Integrations: https://www.contentful.com/developers/docs/ruby/