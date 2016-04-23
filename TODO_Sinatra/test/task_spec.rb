require "task"

describe Task do
  describe "#complete" do
    context "Calling a complete? method upon incomplete task" do
      it "return false" do
        task1 = Task.new("Buy a book")
        expect(task1.complete?).to eql false
      end
    end

    context "Calling a complete? method upon complete task" do
      it "return true" do
        task1 = Task.new("Buy a book", true)
        expect(task1.complete?).to eql true
      end
    end
  end
end
