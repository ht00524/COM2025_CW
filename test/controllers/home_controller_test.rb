require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get home_index_path
    assert_response :success
  end

  test "should get contact" do
  	get contact_url
  	assert_response :success

  	assert_template layout:'application'

  	assert_select 'title', 'My Notes'
  	assert_select 'h1', 'Contact Us'
  	assert_select 'p', 'Complete the following form to get in touch with us.'
  end

  test "should post request contact but no email" do
   	post request_contact_url

  	assert_response :redirect
  	assert_not_empty flash[:flash]
  	assert_nil flash[:notice]
  end

  test "should post request contact" do
  	post request_contact_url, params: {name:"Richard", email:"Richard@surrey.com", telephone:"123456789", message:"Hello"}
  	assert_response :redirect
  	assert_nil flash[:alert]
  	assert_not_empty flash[:notice]
  end
end
