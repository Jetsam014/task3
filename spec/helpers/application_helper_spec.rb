require 'rails_helper'

RSpec.describe ApplicationHelper, type: :helper do
  describe "Applibation title helper" do
    it "タイトルが与えられた場合" do
      expect(full_title("title")).to eq "title - BIGBAG Store"
    end
    it "タイトルが空の場合" do
      expect(full_title("")).to eq "BIGBAG Store"
    end
    it "タイトルがnilの場合" do
      expect(full_title(nil)).to eq "BIGBAG Store"
    end
  end
end
