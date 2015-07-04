class ProductsController < ApplicationController
	load_and_authorize_resource

  def index
  	@products = Product.all
  end
end
