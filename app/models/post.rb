class Post < ActiveRecord::Base
  has_many :answers
  has_many :comments, as: :commentable
  belongs_to :user, class_name: "User", foreign_key: :author_id

  validates :question, presence: true
  validates :body, presence: true
end
