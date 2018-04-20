class Review < ActiveRecord::Base
  belongs_to :foods

  validates :description, :presence => true
end
