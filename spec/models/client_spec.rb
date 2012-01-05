# == Schema Information
#
# Table name: clients
#
#  id                       :integer         not null, primary key
#  financial_institution_id :integer
#  first_name               :string(255)
#  last_name                :string(255)
#  created_at               :datetime
#  updated_at               :datetime
#

require 'spec_helper'

describe Client do
  it {should belong_to(:financial_institution)}
  it {should have_many(:accounts)}
  it {should have_many(:transactions).through(:accounts)}
end
