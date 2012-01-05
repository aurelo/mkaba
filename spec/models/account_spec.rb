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

require 'spec_helper'

describe Account do
  it {should belong_to(:client)}
  it {should belong_to(:account_type)}
  it {should have_many(:transactions)}
  
  it {should validate_presence_of(:account_number)}
  it {should validate_presence_of(:currency)}
end
