require "rails_helper"

RSpec.describe  do 
  describe "Tasks Index Page" do 
    it "displays a list of all the tasks" do 
      task1 = Task.create!(title: "Yardwork", description: "Mow lawn, pick up dog droppings")
      task2 = Task.create!(title: "Grocery Shopping", description: "Go to Costco and King Soopers")
      task3 = Task.create!(title: "Laundry", description: "Fold clothes on dryer")
      visit "/tasks" 

      expect(page).to have_content("Task List")
      expect(page).to have_content("Yardwork")
      expect(page).to have_content("Grocery Shopping")
      expect(page).to have_content("Laundry")
    end

    it "when a user clicks on a task name, they are taken to a page that shows the task along with a short description of the task" do 
      task1 = Task.create!(title: "Yardwork", description: "Mow lawn, pick up dog droppings")
      task2 = Task.create!(title: "Grocery Shopping", description: "Go to Costco and King Soopers")
      task3 = Task.create!(title: "Laundry", description: "Fold clothes on dryer")

      visit "/tasks"

      expect(page).to have_link("Yardwork")
      expect(page).to have_link("Grocery Shopping")
      expect(page).to have_link("Laundry")

      click_link "Yardwork" 

      expect(current_path).to eq("/tasks/#{task1.id}")
    end 

    it "has a link for users to add new tasks" do 
      visit "/tasks" 

      expect(page).to have_link("Add task")

      click_link "Add task" 

      expect(current_path).to eq("/tasks/new")
      expect(page).to have_content("Add a New Task")
    end
  end
  
end 