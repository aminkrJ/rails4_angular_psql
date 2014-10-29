require 'spec_helper'

describe "panes/edit" do
  before(:each) do
    @pane = assign(:pane, stub_model(Pane,
      :name => "MyString",
      :settings => ""
    ))
  end

  it "renders the edit pane form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", pane_path(@pane), "post" do
      assert_select "input#pane_name[name=?]", "pane[name]"
      assert_select "input#pane_settings[name=?]", "pane[settings]"
    end
  end
end
