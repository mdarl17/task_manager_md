require "rails_helper"

RSpec.describe Task, type: :model do
  describe "creation" do 
    it "is instantiated as an instance of the Task class with title and description attributes" do 
      task1 = Task.create!(title: "Yardwork", description: "Mow lawn, pick up dog droppings")
      expect(task1.class).to be(Task)
      expect(task1.title).to eq("Yardwork")
      expect(task1.description).to eq("Mow lawn, pick up dog droppings")
    end
  end

end 