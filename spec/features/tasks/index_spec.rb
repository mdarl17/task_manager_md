require "rails_helper"

RSpec.describe  do 
  describe "Tasks Index Page" do 
    it "displays a list of all the tasks" do 
      task1 = Task.create!(title: "Yardwork", description: "Mow lawn, pick up dog droppings")
      task2 = Task.create!(title: "Grocery Shopping", description: "Go to Costco and King Soopers")
      task3 = Task.create!(title: "Laundry", description: "Fold clothes on dryer")
      visit "/tasks" 

      expect(page).to have_content("Task List")
      expect(page).to have_content("Mow lawn, pick up dog droppings")
      expect(page).to have_content("Grocery Shopping")
      expect(page).to have_content("Go to Costco and King Soopers")
      expect(page).to have_content("Laundry")
      expect(page).to have_content("Fold clothes on dryer")
    end
  end
  
end 