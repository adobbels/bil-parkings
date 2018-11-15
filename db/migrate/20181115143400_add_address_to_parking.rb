class AddAddressToParking < ActiveRecord::Migration[5.2]
  def change
    add_column :parkings, :address, :string
  end
end
