class RemoveAddressToParking < ActiveRecord::Migration[5.2]
  def change
  remove_column :parkings, :address, :string
  end
end
