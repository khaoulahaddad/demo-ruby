require 'test_helper'

class PersonneControllerTest < ActionDispatch::IntegrationTest
  test "should get personne" do
    get personne_personne_url
    assert_response :success
  end

end
