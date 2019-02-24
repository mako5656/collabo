class Article < ApplicationRecord
	attachment :image
	validates :title, presence: true,length:{maximum: 20}
	validates :weather, presence: true,length:{maximum: 10}
	validates :body, presence: true,length:{maximum: 200}
end
