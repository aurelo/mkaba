require 'spec_helper'

describe Branch do
  it { should belong_to(:financial_institution) }
  # columns for gps location
  it {should have_db_column(:latitude)}
  it {should have_db_column(:longitude)}
end# == Schema Information
#
# Table name: branches
#
#  id                       :integer         not null, primary key
#  financial_institution_id :integer
#  latitude                 :float
#  longitude                :float
#  address                  :string(255)
#  city                     :string(255)
#  postal_code              :string(255)
#  created_at               :datetime
#  updated_at               :datetime
#

