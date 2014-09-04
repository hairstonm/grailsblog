Given(/^I am logged in as a blogger$/) do
  pending
end

When(/^I publish a new blog post$/) do
  on_page grailsblogMainPage do |page|
    page.click_post_link('Add Post')
  end
  on_page grailsblogAddPostPage do |page|
    page.title='This is a test'
    page.content='This is a test article. Hopefully this works. Will it? Nobody knows.'
    page.submit
  end
end

Then(/^I am notified that the blog post was successfully added$/) do
  @browser.alert.ok
end

And(/^the newly added blog post is at the top of the recent posts list$/) do
  on grailsblogMainPage do |page|
    title = page.results
    regexTitle = title[/This is a test/]
    expect(regexTitle).to eq('This is a test')
  end
end