class AccountType < ActiveRecord::Base
  validates :name, :presence => true
end
