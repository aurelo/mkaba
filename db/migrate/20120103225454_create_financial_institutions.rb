class CreateFinancialInstitutions < ActiveRecord::Migration
  def change
    create_table :financial_institutions do |t|
      t.string :name, :null => false
      t.text :description

      t.timestamps
    end
  end
end
