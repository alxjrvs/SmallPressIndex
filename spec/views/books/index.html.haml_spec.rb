require 'spec_helper'

describe "books/index" do
  before(:each) do
    assign(:books, [
      stub_model(Book,
        :name => "Name",
        :image => "Image",
        :author_name => "Author Name",
        :author_url => "Author Url",
        :description => "MyText"
      ),
      stub_model(Book,
        :name => "Name",
        :image => "Image",
        :author_name => "Author Name",
        :author_url => "Author Url",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of books" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
    assert_select "tr>td", :text => "Author Name".to_s, :count => 2
    assert_select "tr>td", :text => "Author Url".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
