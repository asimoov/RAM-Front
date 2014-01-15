class Hospital < ActiveRecord::Base
  has_and_belongs_to_many :users
  
  validates :name, :acronym, :city, presence: true
end
