require 'test_helper'

class LivresControllerTest < ActionDispatch::IntegrationTest
  test "should get liste" do
    get livres_liste_url
    assert_response :success
  end

end
