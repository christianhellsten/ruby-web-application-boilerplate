require_relative '../acceptance_helper'

describe "Home page", %q{
    In order to have an awesome homepage
    As a business owner
    I want to see an awesome homepage
  } do

  include AcceptanceHelper

  it "return 200" do
    visit "/"
    assert_equal 200, page.status_code
    assert has_content?("Lorem ipsum dolor sit amet")
  end
end
