require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe "#create" do
    context "weather_id/tide_id/wind_id/content/visit_date/visit_timeが存在するとき" do
      it "保存できる" do
        comment = build(:comment)
        expect(comment).to be_valid
      end
    end

    context "weather_idが空であるとき" do
      it "エラーが発生する" do
        comment = build(:comment, weather_id: "")
        comment.valid?
        expect(comment.errors.messages[:weather_id]).to include "を入力してください"
      end
    end

    context "tide_idが空であるとき" do
      it "エラーが発生する" do
        comment = build(:comment, tide_id: "")
        comment.valid?
        expect(comment.errors.messages[:tide_id]).to include "を入力してください"
      end
    end
  end
end
