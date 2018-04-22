class Review < ActiveRecord::Base
  belongs_to :food

  validates :description, :presence => true
end
