class Comment < ActiveRecord::Base
	belongs_to :submit
	belongs_to :user
	has_many :comments, dependent: :destroy
	belongs_to :main_thread, class_name: "Comment", foreign_key: "parent_id"

	default_scope -> { order(created_at: :desc) }
end
