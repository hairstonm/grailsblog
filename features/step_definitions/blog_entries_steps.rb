Given(/^I am logged in as a blogger$/) do
  visit_page Login
  
   on_page Login do |page|
    page.username = 'me'
    page.password = 'password'
    page.submit
  end
end

When(/^I publish a new blog post$/) do
  visit_page CreatePost
  on_page CreatePost do |page|
    page.title = ' Blog test post'
    page.teaser = '  Teaser line'
    page.post = ' This is the test post main post'
    page.submit
  end
end

Then(/^I am notified that the blog post was successfully added$/) do
  @browser.alert.ok
end

And(/^the newly added blog post is at the top of the recent posts list$/) do
  on grailsblogMainPage do |page|
    title = page.results
    regexTitle = title[/Blog test post/]
    expect(regexTitle).to eq('Blog test post')
  end
end