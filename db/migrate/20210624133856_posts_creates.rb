class PostsCreates < ActiveRecord::Migration[6.0]
  def change
    drop_table :posts_creates
  end
end
