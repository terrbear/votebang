class AddImgLinkToOption < ActiveRecord::Migration
  def change
    add_column :options, :img_url, :string
  end
end
