require './test/test_helper'

class FakePageTest < CapybaraTestCase

  def test_user_gets_error_if_page_nonexistent
    visit '/burgers'

    assert_equal 404, page.status_code
    assert page.has_content?("Page not found.")
  end
end
