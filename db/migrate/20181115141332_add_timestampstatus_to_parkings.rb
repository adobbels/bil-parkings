class AddTimestampstatusToParkings < ActiveRecord::Migration[5.2]
  def change
    add_column :parkings, :timestampstatus, :integer
  end
end
