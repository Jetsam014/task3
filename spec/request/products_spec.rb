require 'rails_helper'
require 'spree/testing_support/factories'

RSpec.describe "Products", type: :request do
  let(:product) { create(:product) }

  describe "GET/potepan/products/id" do
    before { get potepan_product_path(product.id) }

    it "request succeeded" do
      expect(response.status).to eq 200
    end
  end
end
