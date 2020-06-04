class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    change_table :users do |t|
      t.column :first_name, :string
      t.column :last_name, :string
      t.column :age, :integer
      t.column :description, :text
    end
  end
end
