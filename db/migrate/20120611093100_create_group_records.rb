class CreateGroupRecords < ActiveRecord::Migration
  def change
    create_table :group_records do |t|

      t.timestamps
    end
  end
end
