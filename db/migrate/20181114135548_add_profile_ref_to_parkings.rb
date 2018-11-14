class AddProfileRefToParkings < ActiveRecord::Migration[5.2]
  def change
    add_reference :parkings, :profile, foreign_key: true
  end
end
