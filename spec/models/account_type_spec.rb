require 'spec_helper'

describe AccountType do
  it {should validate_presence_of(:name)}
end
