class AddCreatedByToPosts < ActiveRecord::Migration
  def change
		add_column :posts, :created_by, :integer
  end
end
