describe "An example of the equality Matchers" do 

   it "should show how the equality Matchers work" do 
      a = "test string" 
      b = a 
      
      # The following Expectations will all pass 
      expect(a).to eq "test string" 
      expect(a).to eql "test string" 
      expect(a).to be b 
      expect(a).to equal b 
   end
   
end


describe "An example of the comparison Matchers" do

   it "should show how the comparison Matchers work" do
      a = 1
      b = 2
      c = 3		
      d = 'test string'
      
      # The following Expectations will all pass
      expect(b).to be > a
      expect(a).to be >= a 
      expect(a).to be < b 
      expect(b).to be <= b 
      expect(c).to be_between(1,3).inclusive 
      expect(b).to be_between(1,3).exclusive 
      expect(d).to match /TEST/i 
   end
   
end