class Comment < ActiveRecord::Base
	belongs_to :user
	has_one :comment
	belongs_to :submit
	validates_presence_of :author
	validates_presence_of :content
end
