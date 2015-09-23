class Article < ActiveRecord::Base
	extend FriendlyId
	validates :title, :text, presence: true,
                    length: { minimum: 5 }
    friendly_id :title, use: :slugged
end
