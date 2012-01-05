class CreateAtms < ActiveRecord::Migration
  def change
    create_table :atms do |t|
      t.integer :financial_institution_id
      t.float :latitude
      t.float :longitude
      t.string :address
      t.string :city
      t.string :postal_code

      t.timestamps
    end
  end
end
