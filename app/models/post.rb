class Post < ActiveRecord::Base
  has_many :answers
  belongs_to :user, class_name: "User", foreign_key: :author_id
end
