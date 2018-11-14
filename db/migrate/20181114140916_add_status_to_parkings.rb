class AddStatusToParkings < ActiveRecord::Migration[5.2]
  def change
    add_column :parkings, :status, :string, default: "Not Available"
  end
end
