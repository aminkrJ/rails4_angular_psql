require 'spec_helper'

describe "brains/index" do
  before(:each) do
    assign(:brains, [
      stub_model(Brain,
        :name => "Name"
      ),
      stub_model(Brain,
        :name => "Name"
      )
    ])
  end

  it "renders a list of brains" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
