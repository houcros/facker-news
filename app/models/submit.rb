class Submit < ActiveRecord::Base
	#attr_accessible :submit_type, :url
	belongs_to :user
	has_many :comments
	
	default_scope -> { order(created_at: :desc) }
	
	validates :title, presence: true

	validates :url, presence: true, if: :news
	validates :url, absence: true, if: :questions
    def news
    	submit_type == "new"
    end
    def questions
    	submit_type == "question"
    end

	#validates :url, format: { with: /\A#{URI::regexp}\z/,
    #message: "Please insert a valid URL" }

    #include ActiveModel::Validations
  	#validates_with SubmitValidator
end
