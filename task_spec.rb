require 'rspec'
require_relative 'task'

describe Task do
#
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
    # creating a new task with argument Chore
    expect(task.title).to eq("Chore")
    # creating a new description with argument Dishes
    expect(task.description).to eq("Dishes")
  end

  it "has to show that task was completed" do
    task = Task.new("Chore","Dishes")
    # chaning task chore: dishes to done
    expect(task.task_done?).to eq("completed")
  end

  it "has to show completed task when a task that has been done is printed" do
    task = Task.new("Chore", "Dishes")
    task.task_done?
    expect(task.task_done?).to be false
  end

end


# call rspec task_spec.rb
