class Post < ActiveRecord::Base

  validates :content, length: {minimum: 250}
  validates :summary, length: {maximum: 250}
  validates :category, inclusion: {in: ["Fiction", "Non-Fiction"], message: "%{value} is not a valid category"}

  # validates_with TitleValidator
  validates :title, presence: true, title: true
end
