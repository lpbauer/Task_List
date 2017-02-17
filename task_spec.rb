require 'rspec'
require 'date'
require_relative 'task'

describe Task do
  it "has to create a Task class object" do
    expect{Task.new("Chore","Dishes")}.to_not raise_error
  end

  it "it has to have a title " do
    # create a Task object with all required arguments, shove it in a variable
    task = Task.new("Chore","Dishes")
    expect(task.title).to eq("Chore")
  end

  it "has to have a description and retrieve it" do
    task = Task.new("Chore","Dishes")
    expect(task.title).to eq("Chore")
    expect(task.description).to eq("Dishes")
  end

  it "has to show that task was completed" do
    task = Task.new("Chore","Dishes")
    expect(task.task_done?).to be true
  end

  it "has to show completed task when a task that has been done is printed" do
    task = Task.new("Chore", "Dishes")
    task.task_done?
    expect(task.task_done).to be true
  end
end


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

describe DueDateTask do

  it "has to create a new DueDateTask class" do
    expect{DueDateTask.new("Feb","16","2017")}.to_not raise_error
  end
end
