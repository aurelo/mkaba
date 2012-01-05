class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.integer :client_id
      t.integer :account_type_id
      t.string  :account_number, :limit => 16
      t.float   :available_balance
      t.float   :ledger_balance
      t.string  :currency, :limit => 3
      t.date    :valid_to
      t.float   :reserve_amount
      t.timestamps
    end
  end
end
