class Submit < ActiveRecord::Base
	belongs_to :user
	has_many :comments
	
	default_scope -> { order(created_at: :desc) }
	
	validates :title, presence: true
	
	#validates :url, format: { with: /\A#{URI::regexp}\z/,
    #message: "Please insert a valid URL" }
    
end
