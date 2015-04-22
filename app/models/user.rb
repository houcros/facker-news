class User < ActiveRecord::Base
	has_many :submits
	has_many :comments
	validates_presence_of :name
	validates_uniqueness_of :name
end
