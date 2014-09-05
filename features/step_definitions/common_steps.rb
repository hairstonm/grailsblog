Given(/^my favorite blogger has been very active$/) do
  visit_page grailsBlogMainPage
end

When(/^I visit the blog for my favorite blogger$/) do
  on_page Blog do |page|
    page.post2_link
  end
end