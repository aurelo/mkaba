class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer  :account_id
      t.date     :currency_date
      t.date     :transaction_date
      t.float    :amount
      t.string   :transaction_type
      t.string   :description 

      t.timestamps
    end
  end
end
