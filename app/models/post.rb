class Post < ActiveRecord::Base
  belongs_to :user
  attr_accessible :content, :title

  validates :title, presence: true, uniqueness: true
  validates :content , presence: true
end
