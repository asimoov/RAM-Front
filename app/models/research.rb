class Research < ActiveRecord::Base
  self.primary_key = :id

  belongs_to :hospital
  
  belongs_to :ram, dependent: :destroy

  has_many :medications, dependent: :destroy

  accepts_nested_attributes_for :ram
  accepts_nested_attributes_for :medications, :allow_destroy => true
end
