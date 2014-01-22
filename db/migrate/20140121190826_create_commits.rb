class CreateCommits < ActiveRecord::Migration
  def change
    create_table :commits do |t|
      t.string :gh_sha
      t.integer :repository_id
      t.integer :commit_review_id

      t.timestamps
    end
  end
end
