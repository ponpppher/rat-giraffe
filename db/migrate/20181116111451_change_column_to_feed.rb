class ChangeColumnToFeed < ActiveRecord::Migration[5.0]
  def change
    change_column :feeds, :rent, :integer, limit: 10, null: false
    change_column :feeds, :age, :integer, limit: 3, null: false
    change_column :feeds, :remarks, :text, limit: 120, null: false
  end
end
