class Article < ApplicationRecord

	
	include PgSearch

    pg_search_scope :search_title, against: :title

	belongs_to :user

	validates :title, :text, :country, presence: true

	scope :country, -> (country) {where("country ilike ?", "%#{country}%")}

end
