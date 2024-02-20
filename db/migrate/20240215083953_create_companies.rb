class CreateCompanies < ActiveRecord::Migration[7.1]
  def change
    create_table :companies do |t|
      t.string :name, limit: 50
      t.text :address, limit: 200
      t.integer :phone

      t.timestamps
    end
  end
end
