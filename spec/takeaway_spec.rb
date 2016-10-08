require 'takeaway' 

describe TakeAway do
  subject(:takeaway) { described_class.new }
  #let(:item){double :item}

  
  it "responds to the show_menu method" do
    expect(subject).to respond_to(:show_menu)     #.with (1).argument
    
  end
  
  it "responds to the order method" do
    expect(subject).to respond_to(:order).with(1).argument
  end
  
  it "adds an item to the orders array" do
    item = "spring roll"        #This will fail if the menu changes
    expect{takeaway.order(item)}.to change{takeaway.orders.length}.by(+1)
  end
  
  
end