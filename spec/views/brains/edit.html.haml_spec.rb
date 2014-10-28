require 'spec_helper'

describe "brains/edit" do
  before(:each) do
    @brain = assign(:brain, stub_model(Brain,
      :name => "MyString"
    ))
  end

  it "renders the edit brain form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", brain_path(@brain), "post" do
      assert_select "input#brain_name[name=?]", "brain[name]"
    end
  end
end
