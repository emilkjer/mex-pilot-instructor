class GroupStudent < ActiveRecord::Base
  attr_accessible :group_id, :student_id
  belongs_to :student
  belongs_to :group
end