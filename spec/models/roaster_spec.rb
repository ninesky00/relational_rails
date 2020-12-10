require 'rails_helper'

RSpec.describe Roaster, type: :model do
  before :each do
    @stumptown = Roaster.create!(name: "Stumptown Coffee", micro: false, subscription_service: true, location: "Koreatown, NY")
    @starbuckspr = Roaster.create!(name: "Starbucks Private Reserve", micro: false, subscription_service: false, location: "Chelsea, NY")
    @switchback = Roaster.create!(name: "Switchback Coffee", micro: true, subscription_service: false, location: "Colorado Springs ,CO")
    @blue_bottle = Roaster.create!(name: "Blue Bottle Coffee", micro: false, subscription_service: true, location: "Midtown, NY")
  end
  describe "::Class Methods" do
    it "can sort all Roasters by created_at column" do
      @stumptown.created_at = "2020-12-10 00:21:58.631865"
      @starbuckspr.created_at = "2020-12-10 00:19:58.631865"
      @stumptown.save
      @starbuckspr.save
      assertion = [@starbuckspr, @stumptown, @switchback, @blue_bottle]
      expect(Roaster.sort_by_date).to eq(assertion)
    end
  end
end
