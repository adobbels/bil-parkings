class AddStampToParking < ActiveRecord::Migration[5.2]
  def change
    add_column :parkings, :stamp, :integer
  end
end
