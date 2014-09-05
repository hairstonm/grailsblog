require "watir-webdriver"
require "page-object"

include PageObject::PageFactory

Then(/^I should see comments left by other readers$/) do
  on_page HomePage do |page|
  response = Array.new

    (0..1).each do |i|
      response.push(page.results)
      puts response[i]
    end
  end
end

Given(/^I am reading a blog post from my favorite blogger$/) do
  visit_page HomePage
  on_page HomePage do |page|

    page.click_post_link('test')
  end
end

When(/^I add my genius comment to the blog post$/) do
  on_page grailsBlogTestArticle do |page|
    page.click_post_link('Comment on this post')
    page.name='Test Commenter'
    page.email='test@test.com'
    page.website='www.manifestcorp.com'
    page.comment='na.'
    page.submit
  end
end

Then(/^my genius comment is at the top of the blog post comments$/) do
  on_page grailsBlogTestArticle do |page|
    expect(page.comment).to eq('This article is so awesome, but I am so much smarter than you.')
  end
end