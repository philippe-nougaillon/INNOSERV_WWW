require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get pages_home_url
    assert_response :success
  end

  test "should get about" do
    get about_url
    assert_response :success
  end

  test "should get contact" do
    get contact_url
    assert_response :success
  end

  test "should verify form that is correct and return it to contactmailer" do
    post contact_url, params: { email: "contact@example.com", subject: "MySubject", content: "MyContent" }
    assert_redirected_to contact_path()
  end

  test "should verify form that is incorrect and tell the user that his/her email is incorrect" do
    post contact_url, params: { email: "bademail.com", subject: "MySubject", content: "MyContent" }
    assert_response :unprocessable_entity
  end
end
