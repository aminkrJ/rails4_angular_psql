require 'spec_helper'

describe "panes/new" do
  before(:each) do
    assign(:pane, stub_model(Pane,
      :name => "MyString",
      :settings => ""
    ).as_new_record)
  end

  it "renders new pane form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", panes_path, "post" do
      assert_select "input#pane_name[name=?]", "pane[name]"
      assert_select "input#pane_settings[name=?]", "pane[settings]"
    end
  end
end
