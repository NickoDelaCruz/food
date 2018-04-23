class Product < ActiveRecord::Base
  has_many :reviews
  validates :name, :presence => true
  validates :cost, :presence => true,  numericality: true
  validates :country, :presence => true
end
