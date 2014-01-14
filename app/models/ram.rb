class Ram < ActiveRecord::Base
  has_many :suspects, :class_name => 'Medication', :foreign_key => 'ram_id', dependent: :destroy
  has_one :research

  accepts_nested_attributes_for :suspects, :allow_destroy => true
end
