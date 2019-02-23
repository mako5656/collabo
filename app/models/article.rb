class Article < ApplicationRecord
	attachment :image
	<% =begin %>
	validates :title, presence: true
	validates :weather, presence: true
	validates :body, presence: true
	<% =end %>
end
