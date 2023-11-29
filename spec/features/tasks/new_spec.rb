require "rails_helper" 

RSpec.describe "Add Task Page" do 
  it "allows users to add tasks" do 
    visit "/tasks/new"

    expect(page).to have_content("Add a New Task")

    expect(page).to have_content("Title")
    expect(page).to have_field(:title)
    expect(page).to have_content("Description")
    expect(page).to have_field(:description)
    expect(page).to have_button("Add task")

    fill_in :title, with: "Make dinner"
    fill_in :description, with: "Start boiling water @ 4:30 for Spatini dinner for five."
  
    click_button "Add task" 

    expect(current_path).to eq("/tasks")
    expect(page).to have_content("Make dinner")

    click_link "Make dinner"

    expect(page).to have_content("Make dinner")
    expect(page).to have_content("Start boiling water @ 4:30 for Spatini dinner for five.")
  end
  
end 