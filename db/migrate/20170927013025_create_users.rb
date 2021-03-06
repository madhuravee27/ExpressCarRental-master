class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.string :address
      t.integer :age
      t.string :license_number
      t.string :credit_card_number
      t.string :role

      t.timestamps
    end
  end
end
