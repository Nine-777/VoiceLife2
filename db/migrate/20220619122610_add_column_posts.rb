class AddColumnPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :file, :string
  end
end
