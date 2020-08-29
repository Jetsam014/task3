require 'rails_helper'

RSpec.describe ApplicationHelper, type: :helper do
  describe "Applibation title helper" do

    it "displayed full title" do
      expect(full_title("title")).to eq "title - BIGBAG Store"
      expect(full_title("")).to eq "BIGBAG Store"
    end
  end
end
