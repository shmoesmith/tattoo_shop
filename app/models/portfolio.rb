class Portfolio < ApplicationRecord
  validates_presence_of :style
  serialize :photo_urls
  belongs_to :artist
end


# in your controller
# @portfolio = Portfolio.find(params[:id])


# in your view
# <h1> Style: <%= @portfolio.style %> </h1>
# <% @portfolio.photo_urls.each do |url| %>
#   <img src=<%= url %> />
# <% end %>