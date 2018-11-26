class CreateFeeds < ActiveRecord::Migration[5.0]
  def change
    create_table :feeds do |t|
      t.string :propertyname, limit: 50, null: false
      t.integer :rent, limit: 8
      t.string :address, limit: 100, null: false
      t.integer :age, limit: 3
      t.text :remarks, null: false
      
    end
  end
end
