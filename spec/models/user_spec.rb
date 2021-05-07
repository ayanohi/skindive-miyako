require 'rails_helper'

RSpec.describe User, type: :model do
  describe "#create" do

    context "name/email/password/password_confirmationが存在するとき" do
      it "保存できる" do
        user = build(:user)
        expect(user.valid?).to eq true
      end
    end
  end
end
