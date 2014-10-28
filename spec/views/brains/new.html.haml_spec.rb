require 'spec_helper'

describe "brains/new" do
  before(:each) do
    assign(:brain, stub_model(Brain,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new brain form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", brains_path, "post" do
      assert_select "input#brain_name[name=?]", "brain[name]"
    end
  end
end
