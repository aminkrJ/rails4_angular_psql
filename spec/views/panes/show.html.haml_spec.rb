require 'spec_helper'

describe "panes/show" do
  before(:each) do
    @pane = assign(:pane, stub_model(Pane,
      :name => "Name",
      :settings => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(//)
  end
end
