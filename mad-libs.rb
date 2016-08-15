require 'sinatra'

get '/' do
  @dataset = [
    ["Winstons", "Tracers", "Overwatch", "FPS"],
    ["Supports", "carries", "Dota", "MOBA"],
    ["Vloggers", "filmmakers", "YouTube", "video"],
    ["Bloggers", "podcasters", "websites", "news"],
    ["Coders", "designers", "apps", "smartphone"],
    ["Developers", "admins", "servers", "Internet"],
    ["Musicians", "bands", "iTunes", "music"],
    ["Streamers", "subbers", "Twitch", "eSports"],
    ["Makers", "inventors", "Kickstarter", "business"],
    ["Innovators", "creators", "Patreon", "funding"]
  ]

  @keywords = @dataset[rand(@dataset.length)]

  @identity_one = @keywords.shift
  @identity_two = @keywords.shift
  @context      = @keywords.shift
  @world        = @keywords.shift

  slim :index
end
