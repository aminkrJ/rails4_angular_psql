require 'spec_helper'

describe "brains/show" do
  before(:each) do
    @brain = assign(:brain, stub_model(Brain,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
