require 'test_helper'

class BasicTemplateTest < ActionDispatch::IntegrationTest

  test 'it loads a page at the application root' do
    visit root_path
    assert page.find('h1').has_content? 'Idea Box'
  end

end
