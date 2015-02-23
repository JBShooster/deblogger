class Post < ActiveRecord::Base
  belongs_to :author

  validates :title, :body, :category, :author_id, presence: true
  validates :title, length: {minimum: 3}
end
