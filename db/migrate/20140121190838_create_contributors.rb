class CreateContributors < ActiveRecord::Migration
  def change
    create_table :contributors do |t|
      t.integer :user_id
      t.integer :repository_id

      t.timestamps
    end
  end
end
