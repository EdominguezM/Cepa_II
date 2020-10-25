class Wine < ApplicationRecord
  has_many :wine_strains, dependent: :destroy
  has_many :strains, through: :wine_strains
  
  has_many :oenologist_wines, dependent: :destroy
  has_many :oenologists, through: :oenologist_wines
  
  accepts_nested_attributes_for :wine_strains, :reject_if => lambda {|p| p.values.all?(&:blank?)}, :allow_destroy => true

  accepts_nested_attributes_for :oenologist_wines, :reject_if => lambda {|p| p.values.all?(&:blank?)}, :allow_destroy => true
  
  validates :name, exclusion: { in: %w("" nil empty)}, presence: true

  def percent
    list= []
    self.wine_strains.map { |x| list.push("#{x.strain.name} (#{x.percentage}%)")}
    list.sort.join(', ')
  end

  def grades_wine
    list= []
    self.oenologist_wines.map { |x| list.push("#{x.oenologist.name} nota:#{x.grade}")}
    list.sort.join(', ')
  end

  def wines_one
    list= []
    self.wine_strains.map { |x| list.push(x.strain.name)}
    list.sort
  end
  
end
