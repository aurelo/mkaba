# == Schema Information
#
# Table name: accounts
#
#  id                :integer         not null, primary key
#  client_id         :integer
#  account_type_id   :integer
#  account_number    :string(16)
#  available_balance :float
#  ledger_balance    :float
#  currency          :string(3)
#  valid_to          :date
#  reserve_amount    :float
#  created_at        :datetime
#  updated_at        :datetime
#

class Account < ActiveRecord::Base
  belongs_to :client
  belongs_to :account_type
  has_many :transactions
  
  validates :account_number, :currency, :presence => true
end
