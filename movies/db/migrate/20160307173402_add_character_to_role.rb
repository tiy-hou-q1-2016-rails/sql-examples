class AddCharacterToRole < ActiveRecord::Migration
  def change
    add_column :roles, :character, :string
  end
end
