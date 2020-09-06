require 'rails_helper'

RSpec.describe "Categories", type: :request do
  let(:taxon) { create(:taxon) }
  let(:taxonomy) { create(:taxonomy) }
  let(:product) { create(:product) }

  describe "GET/potepan/categories/id" do
    before { get potepan_category_path(taxon.id) }

    it "正常なレスポンスを返す" do
      expect(response).to have_http_status :success
    end
    it "分類群(taxon)が表示される" do
      expect(response.body).to include taxon.name
    end
    it "分類学(taxonmies)が表示される" do
      expect(response.body).to include taxonomy.name
    end
    it "showテンプレートが表示される" do
      expect(response).to render_template :show
    end
  end
end
