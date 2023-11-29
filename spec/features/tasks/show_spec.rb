require "rails_helper"

RSpec.describe "Tasks Show Page" do 
  it "displays the title and description of a particular task" do 
    task1 = Task.create!(title: "Yardwork", description: "Mow lawn, pick up dog droppings")

    visit "/tasks/#{task1.id}"

    expect(page).to have_content("Task Details")
    expect(page).to have_content("Yardwork")
    expect(page).to have_content("Mow lawn, pick up dog droppings")
  end
end 