# == Schema Information
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

class Branch < ActiveRecord::Base
   belongs_to :financial_institution
end
