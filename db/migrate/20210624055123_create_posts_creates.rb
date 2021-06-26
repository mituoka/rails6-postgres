class CreatePostsCreates < ActiveRecord::Migration[6.0]
  def change
    create_table :posts_creates do |t|

      t.timestamps
    end
  end
end
