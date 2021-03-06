class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :commentable, polymorphic: true

  validates :text, presence: true, length: { minimum: 1 }
  validates_associated :commentable, :user
end
