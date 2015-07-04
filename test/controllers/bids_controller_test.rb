require 'test_helper'

class BidsControllerTest < ActionController::TestCase
	include Devise::TestHelpers

	test "guest shouldn't create bids" do
		user = users(:guest)
		sign_in user
		post :create
		assert_redirected_to pages_landing_path
	end

	test "member should create bids" do
		post :create
		assert_redirected_to products_path
	end

  test "should post create" do
	  	assert_difference('Bid.count') do
	    post :create, bid: {product_id: products(:one).id}, product_id: products(:one).id
	  end
	  assert_redirected_to products_path
	end

end
