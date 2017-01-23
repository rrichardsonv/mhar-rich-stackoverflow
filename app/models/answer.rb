class Answer < ActiveRecord::Base
  belongs_to :post
  belongs_to :answerer, class_name: "User"
  has_many :comments, as: :commentable

  validates :body, presence: true
end
