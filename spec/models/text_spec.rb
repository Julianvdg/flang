require 'rails_helper'

describe Text do

  describe "creation" do

    context "valid attributes" do

      it "should be valid" do
        text = FactoryGirl.create(:text)
        expect(text).to be_valid

      end

    end

  end

end
