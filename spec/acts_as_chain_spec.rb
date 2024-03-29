describe ActsAsChain do
  let(:object) {
    class FakeObject
      acts_as_chain :fake1, :fake2
    end
    
    FakeObject.new
  }
  
  it "should be chainable" do
    object.fake1("value").fake1.should eq("value")
  end
  
  it "should have a get method" do
    object.fake1.should be_nil
  end
  
  it "should be able to handle more than one chain" do
    object.fake1("one").fake2("two")
    object.fake1.should eq("one")
    object.fake2.should eq("two")
  end
  
  it "should be able to handle multiply arguments" do
    object.fake1("one", "two").fake1.should eq(["one", "two"])
  end
end