Given(/^I navigate to "([^"]*)"$/) do |site|
  visit(page_translator(site))
end

When(/^I view the page$/) do
  # doesn't do anything, it just reads better
end

Then(/^I should see a section called "([^"]*)"$/) do |section|
  expect(page).to have_content(section)
end

# adds the scope modifier to restrict where to look
Then(/^I should see a section called "([^"]*)" within the "([^"]*)" section$/) do |content, section|
  css = section_mapper(section)
  expect(page.find(css)).to have_content(content)
end


# take the logical name of a page and map it to a URL
# root URL is in the config file (env.rb)
def page_translator(name)
  if(name == 'the homepage')
    return "/"
  end

  raise 'Not sure where you are trying to go'
end

# take the logical section and return the CSS locator
def section_mapper(section)
  css = "body"
  if section == 'testimonials'
    css = '#testimonials'
  end

  return css
end