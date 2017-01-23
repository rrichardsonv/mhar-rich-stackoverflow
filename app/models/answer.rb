class Answer < ActiveRecord::Base
  belongs_to :post
  belongs_to :answerer, class_name: "User"
end
