class CreateConsumers < ActiveRecord::Migration[5.0]
  def change
    create_table :consumers do |t|
      t.string :id
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password
      t.integer :contact

      t.timestamps
    end
  end
end
