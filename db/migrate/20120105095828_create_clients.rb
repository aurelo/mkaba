class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.integer :financial_institution_id
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end
