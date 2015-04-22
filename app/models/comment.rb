class Comment < ActiveRecord::Base
	belongs_to :user
	has_one :comment
	has_one :submit
	validates_presence_of :author
	validates_presence_of :content
end
