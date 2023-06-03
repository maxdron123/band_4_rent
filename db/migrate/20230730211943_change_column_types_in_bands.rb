class ChangeColumnTypesInBands < ActiveRecord::Migration[7.0]
  def change
    change_column :bands, :members_count, :integer, using: 'members_count::integer'
    change_column :bands, :description, :text
  end
end
