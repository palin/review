class CreateRepositories < ActiveRecord::Migration
  def change
    create_table :repositories do |t|
      t.integer :user_id
      t.string :access_type
      t.string :name

      t.timestamps
    end
  end
end
