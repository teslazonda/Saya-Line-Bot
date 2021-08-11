require 'date'
require 'json'
require 'open-uri'

def fetch_cat_pic
  url = 'https://api.thecatapi.com/v1/images/search'
 cat_image_message = JSON.parse { "type": "image", 
    "originalContentUrl": url,
    "previewImageUrl":"https://api.thecatapi.com/v1/images/search" 
  }
end