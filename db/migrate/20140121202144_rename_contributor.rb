class RenameContributor < ActiveRecord::Migration
  def change
    rename_table :contributors, :contributions
  end
end
