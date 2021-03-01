class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :email, null: false
      t.string :password_digest
      t.string :username, limit: 15, null: false
      t.string :first_name, limit: 25, null: false
      t.string :last_name, limit: 25, null: false
      t.string :pfp_url

      t.timestamps
    end

    add_index :users, :email, unique: true
    add_index :users, :username, unique: true
  end
end
