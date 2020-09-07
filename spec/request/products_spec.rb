require 'rails_helper'

RSpec.describe "Products", type: :request do
  let(:product) { create(:product) }

  describe "GET/potepan/products/id" do
    before { get potepan_product_path(product.id) }

    it "２００レスポンスを返す" do
      expect(response.status).to eq 200
    end
    it "商品名が表示される" do
      expect(response.body).to include product.name
    end
    it "商品価格が表示される" do
      expect(response.body).to include product.price.to_s
    end
    it "showテンプレートが表示される" do
      expect(response).to render_template :show
    end
  end
end
