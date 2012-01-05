require 'spec_helper'

describe Client do
  it {should belong_to(:financial_institution)}
  it {should have_many(:accounts)}
  it {should have_many(:transactions).through(:accounts)}
end
