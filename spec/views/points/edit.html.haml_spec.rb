require 'spec_helper'

describe "points/edit" do
  before(:each) do
    @point = assign(:point, stub_model(Point,
      :title => "MyString",
      :geo => ""
    ))
  end

  it "renders the edit point form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", point_path(@point), "post" do
      assert_select "input#point_title[name=?]", "point[title]"
      assert_select "input#point_geo[name=?]", "point[geo]"
    end
  end
end
