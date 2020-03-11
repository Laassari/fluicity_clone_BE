class Post < ApplicationRecord
  has_one_attached :image

  validates :title, length: { minimum: 3, maximum: 140}
  validates :description, length:{ minimum:10, maximum: 10000}

end
