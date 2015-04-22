class Submit < ActiveRecord::Base
	has_many :comments
	belongs_to :user
	validates_presence_of :title
	validates_presence_of :url
end
