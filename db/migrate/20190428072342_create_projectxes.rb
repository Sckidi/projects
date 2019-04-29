class CreateProject < ActiveRecord::Migration[5.2]
  def change
    create_table :project do |t|
      t.string :name
      t.text :summary
      t.string :start_date
      t.string :end_date

      t.timestamps
    end
  end
end
