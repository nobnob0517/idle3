class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.integer :price
      t.string :adress
      t.text :explain
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
