class CreateBands < ActiveRecord::Migration[7.0]
  def change
    create_table :bands do |t|
      t.string :name
      t.string :genre
      t.string :members_count
      t.string :description
      t.integer :rate_fee
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
