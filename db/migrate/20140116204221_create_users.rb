class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :github_id
      t.string :login
      t.string :name
      t.string :avatar_url
      t.string :location
      t.string :email
      t.string :encrypted_password
      t.string :persistence_token
      t.integer :sign_in_count

      t.timestamps
    end
  end
end
