class Magazine < ApplicationRecord
  has_many :oenologist_magazines, dependent: :destroy
  has_many :oenologists, through: :oenologist_magazines
end
