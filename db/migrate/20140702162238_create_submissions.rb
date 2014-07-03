class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|
      t.integer :score
      t.string :grade, limit: 1
      t.integer :assignment_id

      t.timestamps
    end
  end
end
