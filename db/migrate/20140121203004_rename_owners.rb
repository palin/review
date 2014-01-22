class RenameOwners < ActiveRecord::Migration
  def change
    rename_table :owners, :ownerships
  end
end
