require 'spec_helper'

describe Branch do
  it { should belong_to(:financial_institution) }
end