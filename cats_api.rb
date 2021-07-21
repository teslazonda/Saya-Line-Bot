require 'date'
require 'json'
require 'open-uri'

def fetch_cat_pic
  url = 'https://api.thecatapi.com/v1/images/search'
  begin
    data_serialized = open(url).read
  rescue OpenURI::HTTPError => e
    return 'No events found in Tokyo...'
  end
  data = JSON.parse(data_serialized)
  # Only keep the events of the week and sort'em
  kitty_url = data.first
  open(kitty_url).read
end