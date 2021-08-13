require 'date'
require 'json'
require 'open-uri'

def fetch_cat_pic
  url = 'https://api.thecatapi.com/v1/images/search'
  cat_image_message = JSON.parse(URI.open(url).read)
  cat_image_message[0]['url'] # take the URL from the JSON returned by API
end
