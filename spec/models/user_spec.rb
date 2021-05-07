require 'rails_helper'

RSpec.describe User, type: :model do
  describe "#create" do

    context "name/email/password/password_confirmationが存在するとき" do
      it "保存できる" do
        user = build(:user)
        expect(user.valid?).to eq true
      end
    end

    context "passwordが6文字以上であるとき" do
      it "保存できる" do
        user = build(:user, password: "123456", password_confirmation: "123456")
        expect(user.valid?).to eq true
      end
    end

    context "nameが空であるとき" do
      it "エラーが発生する" do
        user = build(:user, name: "")
        expect(user.valid?).to eq false
        expect(user.errors.messages[:name]).to include "を入力してください"
      end
    end

    context "emailが空であるとき" do
      it "エラーが発生する" do
        user = build(:user, email: "")
        expect(user.valid?).to eq false
        expect(user.errors.messages[:email]).to include "を入力してください"
      end
    end

    context "passwordが空であるとき" do
      it "エラーが発生する" do
        user = build(:user, password: "")
        expect(user.valid?).to eq false
        expect(user.errors.messages[:password]).to include "を入力してください"
      end
    end

    context "passwordが存在しても、password_confirmationが空であるとき" do
      it "エラーが発生する" do
        user = build(:user, password_confirmation: "")
        expect(user.valid?).to eq false
        expect(user.errors.messages[:password_confirmation]).to include "とパスワードの入力が一致しません"
      end
    end

    context "nameが31文字以上であるとき" do
      it "エラーが発生する" do
        user = build(:user, name: "a" * 31)
        expect(user.valid?).to eq false
        expect(user.errors.messages[:name]).to include "は30文字以内で入力してください"
      end
    end

    context "emailが256文字以上であるとき" do
      it "エラーが発生する" do
        user = build(:user, email: "a" * 256)
        expect(user.valid?).to eq false
        expect(user.errors.messages[:email]).to include "は255文字以内で入力してください"
      end
    end

    context "passwordが5文字以下であるとき" do
      it "エラーが発生する" do
        user = build(:user, password: "12345")
        expect(user.valid?).to eq false
        expect(user.errors.messages[:password]).to include "は6文字以上で入力してください"
      end
    end
  end
end
