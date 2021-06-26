class CreatePostsData < ActiveRecord::Migration[6.0]
  def change
    create_table :posts_data do |t|
      t.string :title
      t.string :link_url
      t.string :image_url
      t.text :description

      t.timestamps
    end
  end
end
