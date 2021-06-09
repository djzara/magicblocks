class CreateUsersTable < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :uuid, null: false
      t.string :email, null: false
      t.string :password, null: false
      t.boolean :remember, default: false, null: false
      t.timestamp
      t.boolean :deleted, default: false, null: false
      # indexes
      t.index :email
      t.unique :email
    end
  end
end
