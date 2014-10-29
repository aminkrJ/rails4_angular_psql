require 'spec_helper'

describe "panes/index" do
  before(:each) do
    assign(:panes, [
      stub_model(Pane,
        :name => "Name",
        :settings => ""
      ),
      stub_model(Pane,
        :name => "Name",
        :settings => ""
      )
    ])
  end

  it "renders a list of panes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
