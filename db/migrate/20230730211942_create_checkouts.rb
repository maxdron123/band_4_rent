class CreateCheckouts < ActiveRecord::Migration[7.0]
  def change
    create_table :checkouts do |t|
      t.date :booking_date
      t.references :users, null: false, foreign_key: true
      t.references :bands, null: false, foreign_key: true

      t.timestamps
    end
  end
end
