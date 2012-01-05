require 'spec_helper'

describe Branch do
  it { should belong_to(:financial_institution) }
  # columns for gps location
  it {should have_db_column(:latitude)}
  it {should have_db_column(:longitude)}
end