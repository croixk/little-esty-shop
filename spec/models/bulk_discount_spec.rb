require 'rails_helper'

RSpec.describe BulkDiscount, type: :model do
  describe "relationships" do
    binding.pry
    it {should belong_to(:merchant)}
  end
end
