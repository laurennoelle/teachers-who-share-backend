class CreateSavedItems < ActiveRecord::Migration[7.0]
  def change
    create_table :saved_items do |t|
      t.string :title
      t.string :subject
      t.integer :grade
      t.text :description
      t.integer :reviews
      t.string :image

      t.timestamps
    end
  end
end
