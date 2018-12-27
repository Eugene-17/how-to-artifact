class AddPersonalDataToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :nickname, :string
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_column :users, :birthday, :date
    add_column :users, :role, :integer
    add_column :users, :description, :text
    add_column :users, :gender, :string
  end
end
