class Medication < ActiveRecord::Base
  belongs_to :research
  belongs_to :ram, :class_name => 'Ram'
end
