class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :jobs, :type, :event_type
  end
end
