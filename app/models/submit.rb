class Submit < ActiveRecord::Base
	#attr_accessible :submit_type, :url
	belongs_to :user
	has_many :comments
	
	default_scope -> { order(created_at: :desc) }
	
	validates :title, presence: true

	#validate :new_with_link

	#def new_with_link
    #	errors.add(:url, "New goes with a Url") if (submit_type == 'new' and url != nil)
    #end

    
	#validates :url, format: { with: /\A#{URI::regexp}\z/,
    #message: "Please insert a valid URL" }
    
end
