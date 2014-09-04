Then(/^the url should contain information about the post$/) do
  on_page grailsBlogTestArticlePage do |page|
  page.current_path.should ==('/grailsblog/This_is_a_long_title')
  end
end