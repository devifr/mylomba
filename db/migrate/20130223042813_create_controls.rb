class CreateControls < ActiveRecord::Migration
  def change
    create_table :controls do |t|
      t.integer :user_id
      t.string :category
      t.string :berhasil
      t.date :activity_date

      t.timestamps
    end
  end
end
