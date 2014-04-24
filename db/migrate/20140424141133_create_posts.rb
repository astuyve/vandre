class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.text :description
      t.string :picture
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
