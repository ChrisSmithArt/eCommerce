require "test_helper"

class ServiceOffersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get service_offers_index_url
    assert_response :success
  end

  test "should get show" do
    get service_offers_show_url
    assert_response :success
  end
end