class Comedian < ActiveRecord::Base
  validates_presence_of :name, :age
  has_many :specials

  def self.average_age
    average(:age).round(2)
  end

  def self.unique_cities
    distinct.pluck(:city)
  end

end
