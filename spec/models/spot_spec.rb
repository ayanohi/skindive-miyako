require 'rails_helper'

RSpec.describe Spot, type: :model do
  describe "#create" do
    context "name/area_id/latitude/longitude/descriptionが存在するとき" do
      it "保存できる" do
        area = create(:area)
        spot = build(:spot, area_id: area.id)
        expect(spot).to be_valid
      end
    end
  end
end
