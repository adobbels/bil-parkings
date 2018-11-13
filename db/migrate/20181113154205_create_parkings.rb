class CreateParkings < ActiveRecord::Migration[5.2]
  def change
    create_table :parkings do |t|
      t.integer :number
    end
  end
end
