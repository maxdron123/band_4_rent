class ChangeMembersCountDataType < ActiveRecord::Migration[7.0]
  def change
    change_column :bands, :members_count, :integer, using: 'members_count::integer'
  end
end
