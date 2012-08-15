class AddRecDateToGroupRecord < ActiveRecord::Migration
  def change
    add_column :group_records, :reg_date, :datetime
  end
end
