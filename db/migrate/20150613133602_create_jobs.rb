class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.date :start_date
      t.date :end_date
      t.string :location
      t.string :type
      t.text :requirements
      t.text :description

      t.timestamps null: false
    end
  end
end
