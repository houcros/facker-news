class Submit < ActiveRecord::Base
	#attr_accessible :submit_type, :url
	belongs_to :user
	has_many :comments
	
	default_scope -> { order(created_at: :desc) }
	
	validates :title, presence: true

  	#include ActiveModel::Validations
  	#validates_with SubmitValidator
    
end
