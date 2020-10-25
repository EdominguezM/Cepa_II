class Oenologist < ApplicationRecord

  has_many :oenologist_magazines, dependent: :destroy
  has_many :magazines, through: :oenologist_magazines

  has_many :oenologist_wines, dependent: :destroy
  has_many :wines, through: :oenologist_wines



  def position_oenologist
    list= []
    self.oenologist_magazines.map { |x| list.push("#{x.magazine.name}, cargo: #{x.position}")}
    list.sort.join(', ')
  end
end
