require "watir-webdriver"
require "page-object"

include PageObject::PageFactory

Then(/^I should see a summary of my favorite blogger's (\d+) most recent posts in reverse order$/) do |arg|
  on_page grailsBlogMainPage do |page|
    response = Array.new

    (0..9).each do |i|
      response.push(page.results)
      puts response[i]
    end
  end
end

When(/^I choose a blog post$/) do
  on_page grailsBlogMainPage do |page|

  page.click_post_link('This is a long title')
  end
end

Then(/^I should see the blog post$/) do
  expect(@current_page.title).to eq('This is a long title')
end

When(/^I search for a blog post$/) do
  on_page grailsBlogMainPage do |page|
    page.click_post_link('Search')
  end
  on_page grailsBlogSearchPage do |page|
    page.search='title'

  end
end

Then(/^I should see posts with that value in the title$/) do
    response = Array.new

    (0..2).each do |i|
      response.push(@current_page.searchResults)
      puts response[i]
  end
end