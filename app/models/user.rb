class User < ActiveRecord::Base
	has_many :submits, dependent: :destroy
	has_many :comments, dependent: :destroy
	has_one :googleuser
end
