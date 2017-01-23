class Comment < ActiveRecord::Base
  belongs_to :commentable, polymorphic: true
  belongs_to :commentor, class_name: 'User'
end
