class AddPasswordToUsers < ActiveRecord::Migration[7.2]
  def change
    add_column :uaers, :password, :string
  end
end
