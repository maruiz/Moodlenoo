class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :title
      t.integer :attachable_id
      t.string :attachable_type

      t.timestamps
    end
  end
end
