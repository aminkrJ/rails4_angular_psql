require 'spec_helper'

describe "points/new" do
  before(:each) do
    assign(:point, stub_model(Point,
      :title => "MyString",
      :geo => ""
    ).as_new_record)
  end

  it "renders new point form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", points_path, "post" do
      assert_select "input#point_title[name=?]", "point[title]"
      assert_select "input#point_geo[name=?]", "point[geo]"
    end
  end
end
