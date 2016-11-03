class AddColumnToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :image, :text
  end
end
