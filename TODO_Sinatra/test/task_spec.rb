require "task"

describe Task do
  before :each do
    @task = Task.new("Buy a book")
  end

  describe "#complete" do
    context "Calling a complete? method upon incomplete task" do
      it "return false" do
        expect(@task.complete?).to eql false
      end
    end

    context "Calling a complete? method upon complete task" do
      it "return true" do
        @task = Task.new("Buy a book", true)
        expect(@task.complete?).to eql true
      end
    end
  end

  describe "#complete!" do
    context "Given an incomplete task and invoked complete! method on it" do
      it "changes the complete status to true" do
        @task.complete!
        expect(@task.complete?).to eql true
      end
    end
  end

  describe "#make_incomplete!" do
    context "given a complete task and invoked make_incomplete!" do
      it "changes the task status to incomplete" do
        @task = Task.new("Buy a book", true)
        @task.make_incomplete!
        expect(@task.complete?).to eql false
      end
    end
  end
end
