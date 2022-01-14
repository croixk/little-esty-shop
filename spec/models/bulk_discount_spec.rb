require 'rails_helper'

RSpec.describe BulkDiscount, type: :model do
  describe "relationships" do
    it {should belong_to(:merchant)}
  end

  describe "validations" do
      it { validate_presence_of(:percent_off) }
      it { validate_numericality_of(:percent_off) }
      it { should_not allow_value(0).for(:percent_off) }
      it { should_not allow_value(100..).for(:percent_off) }
  end
end
