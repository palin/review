class CreateCommitReviews < ActiveRecord::Migration
  def change
    create_table :commit_reviews do |t|
      t.integer :user_id
      t.integer :commit_id
      t.integer :state_id
      t.integer :rating_id

      t.timestamps
    end
  end
end
