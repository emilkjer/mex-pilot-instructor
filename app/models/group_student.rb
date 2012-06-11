class GroupStudent < ActiveRecord::Base
  attr_accessible :group_id, :student_id
  has_one :student
  has_one :group
  belongs_to :student
  belongs_to :group
end
