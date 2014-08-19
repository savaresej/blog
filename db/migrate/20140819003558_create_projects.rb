class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.text :githu_link
      t.text :heroku_link
      t.string :picture

      t.timestamps
    end
  end
end
