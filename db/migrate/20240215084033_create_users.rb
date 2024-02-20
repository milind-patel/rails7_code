class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :email, limit: 50
      t.string :first_name, limit: 20
      t.string :last_name, limit: 20
      t.integer :salary
      t.integer :phone
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
