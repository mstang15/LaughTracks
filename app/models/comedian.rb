class Comedian < ActiveRecord::Base
  validates_presence_of :name, :age
  has_many :specials

  def self.average_age
    average(:age)
  end

  def self.unique_cities
    distinct.pluck(:city)
  end

end
