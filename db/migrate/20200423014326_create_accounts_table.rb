class CreateAccountsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :accounts do |t|
      t.string :uuid, null: false
      t.numeric :user_id, polymorphic: true
      t.string :name, default: '', null: false
      t.numeric :age, default: :null
      t.string :location, default: ''
      t.boolean :deleted, default: false
      # indexes
      t.index :user_id
    end
    add_foreign_key :accounts, :users
  end
end
