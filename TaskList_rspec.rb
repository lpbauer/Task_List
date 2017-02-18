require 'rspec'
require_relative 'task'
require_relative 'task_list'

describe TaskList do

  it "has to create a new class TaskList" do
    expect{TaskList.new}.to_not raise_error
  end

  it "has to return all the tasks in a task list" do
    task1 = Task.new("Chore", "Dishes")
    task2 = Task.new("Errand", "Groceries")
    task3 = Task.new("Chore", "Vacuum")
#  Create a new task list
    task_list = TaskList.new
    # adding tasks to container (noun must take action of verb)
    task_list.add_tasks_to_tasklist(task1)
    task_list.add_tasks_to_tasklist(task2)
    task_list.add_tasks_to_tasklist(task3)
    expect(task_list.container).to match_array [task1,task2,task3]
    # make new TaskList
    # call add_tasks_to_tasklist(task) on it, shoveling task1, task2, task3 into the empty array one at a time
    # expect task1, task2, task3 to be inside
    # tasklist.container (use include matcher)
  end

  it "has to return completed tasks" do
    task1 = Task.new("Chore", "Dishes")
    task1.task_done?
    task2 = Task.new("Errand", "Groceries")
    task3 = Task.new("Chore", "Vacuum")
    task_list = TaskList.new
    task_list.add_tasks_to_tasklist(task1)
    task_list.add_tasks_to_tasklist(task2)
    task_list.add_tasks_to_tasklist(task3)
    expect(task_list.include_completed_tasks).to include(task1)
    # task1.task_done
  end

  it "has to return not completed tasks" do
    task1 = Task.new("Chore", "Dishes")
    task2 = Task.new("Errand", "Groceries")
    task3 = Task.new("Chore", "Vacuum")
    task_list = TaskList.new
    task_list.add_tasks_to_tasklist(task1)
    task_list.add_tasks_to_tasklist(task2)
    task_list.add_tasks_to_tasklist(task3)
    expect(task_list.include_not_completed_tasks).to include(task1,task2,task3)
  end

end

#call rspec TaskList_rspec.rb



# Story: As a developer with a TaskList with and without due dates, I can list all the not completed items in order of due date, and then the items without due dates.
# 
#   it "has to list all the not completed items in order of due date then items without a due date" do
#     task1 = Task.new("Chore", "Dishes")
#     task2 = Task.new("Errand", "Groceries")
#     task3 = Task.new("Chore", "Vacuum")
#     task_list = TaskList.new
