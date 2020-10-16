class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name, unique: true
      t.string :pwd
      t.string :token

      t.timestamps
    end
    add_index :users, :token, unique: true
    add_index :users, :name, unique: true
  end
end
