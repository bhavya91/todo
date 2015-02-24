AfterStep do
  # sleep(0.3)
end

Given(/^I am in home page$/) do
  visit root_path
end

Then(/^I should see "(.*?)"$/) do |txt|
  expect(page).to have_content txt
end

Then(/^I should not see "(.*?)"$/) do |txt|
  expect(page).not_to have_content txt
end

When(/^I press "(.*?)"$/) do |btn|
  click_button btn
end

When(/^I enter "(.*?)" in task input$/) do |txt|
  within("#task_form") do
    fill_in 'task[title]', :with => txt
  end
end

Then(/^I should see "(.*?)" in tasks list$/) do |txt|
  expect(page.first('#tasks').text).to match(txt)
end

When(/^I go to home page$/) do
  visit root_path
end