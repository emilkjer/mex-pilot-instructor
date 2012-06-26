class AddGroupToGroupRecord < ActiveRecord::Migration
  def change
    add_column :group_records, :group_id, :integer
  end
end
