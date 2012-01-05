class CreateBranches < ActiveRecord::Migration
  def change
    create_table :branches do |t|
      t.integer :financial_institution_id, :references => "financial_institutions"
      t.float :latitude
      t.float :longitude
      t.string :address
      t.string :city
      t.string :postal_code

      t.timestamps
    end
  end
end
