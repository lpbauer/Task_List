require 'rspec'
require_relative 'task'
require_relative 'task_list'
require_relative 'DueDateTask'

describe DueDateTask do

  it "has to create a new DueDateTask class" do
    expect{DueDateTask.new("Chores","Dishes","02","16","2017")}.to_not raise_error
  end

  it "has to return the date passed into the DueDateTask object" do
    due_date_of_task = DueDateTask.new("Chores","Dishes","02","17","2017")
    expect(due_date_of_task.duedate).to eq("2017-02-17")
  end

  it "has return an array with a due date with labels and values." do
    # Story: As a developer, I can print an item with a due date with labels and values.
    task1 = DueDateTask.new("Chore", "Dishes","02","16","2017")
    task1.task_done?
    task2 = DueDateTask.new("Errand", "Groceries","02","17","2017")
    task3 = DueDateTask.new("Chore", "Vacuum","02","17","2017")
    task_list = TaskList.new
    task_list.add_tasks_to_tasklist(task1)
    task_list.add_tasks_to_tasklist(task2)
    task_list.add_tasks_to_tasklist(task3)
    # Hint: When implementing to_s, use super to call to_s on the super class.
    expect(task1.to_s).to eq("Title: Chore Description: Dishes Task Done?: true Due date: completed")
    expect(task2.to_s).to eq("Title: Errand Description: Groceries Task Done?: false Due date: 2017-02-17")
    expect(task3.to_s).to eq("Title: Chore Description: Vacuum Task Done?: false Due date: 2017-02-17")
  end

  # Story: As a developer, I can add items with due dates to my TaskList.
  # Hint: Consider keeping items with due dates separate from the other items.
  # it "has to the objects with the due date to the TaskList" do
  #   task1 = DueDateTask.new("Chore", "Dishes",02,17,2017)
  #   task1.task_done?
  #   task2 = DueDateTask.new("Errand", "Groceries",02,17,2017)
  #   task3 = DueDateTask.new("Chore", "Vacuum",02,17,2017)
  #   task_list = TaskList.new
  #   task_list.add_tasks_based_on_due_today(task1)
  #   task_list.add_tasks_based_on_due_today(task2)
  #   task_list.add_tasks_based_on_due_today(task3)
  #   expect(task1.to_s)
  # end

end
