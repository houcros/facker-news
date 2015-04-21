class Comment < ActiveRecord::Base
	belongs_to :user
	has_one :comment
	has_one :submit
end
