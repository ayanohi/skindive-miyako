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

    context "nameが空であるとき" do
      it "エラーが発生する" do
        spot = build(:spot, name: "")
        spot.valid?
        expect(spot.errors.messages[:name]).to include "を入力してください"
      end
    end

    context "area_idが空であるとき" do
      it "エラーが発生する" do
        spot = build(:spot, area_id: "")
        spot.valid?
        expect(spot.errors.messages[:area_id]).to include "を入力してください"
      end
    end

    context "latitudeが空であるとき" do
      it "エラーが発生する" do
        spot = build(:spot, latitude: "")
        spot.valid?
        expect(spot.errors.messages[:latitude]).to include "を入力してください"
      end
    end

    context "longitudeが空であるとき" do
      it "エラーが発生する" do
        spot = build(:spot, longitude: "")
        spot.valid?
        expect(spot.errors.messages[:longitude]).to include "を入力してください"
      end
    end

    context "descriptionが空であるとき" do
      it "エラーが発生する" do
        spot = build(:spot, description: "")
        spot.valid?
        expect(spot.errors.messages[:description]).to include "を入力してください"
      end
    end
  end
end
