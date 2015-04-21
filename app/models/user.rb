class User < ActiveRecord::Base
	has_many :submits
	has_many :comments
end
