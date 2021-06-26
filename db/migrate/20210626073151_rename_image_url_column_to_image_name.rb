class RenameImageUrlColumnToImageName < ActiveRecord::Migration[6.0]
  def change
    rename_column :posts_data, :image_url , :image_name
  end
end
