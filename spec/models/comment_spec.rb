require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe "#create" do
    context "weather_id/tide_id/wind_id/content/visit_date/visit_timeが存在するとき" do
      it "保存できる" do
        comment = build(:comment)
        expect(comment).to be_valid
      end
    end
  end
end
