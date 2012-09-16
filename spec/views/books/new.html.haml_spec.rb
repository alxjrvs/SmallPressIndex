require 'spec_helper'

describe "books/new" do
  before(:each) do
    assign(:book, stub_model(Book,
      :name => "MyString",
      :image => "MyString",
      :author_name => "MyString",
      :author_url => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new book form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => books_path, :method => "post" do
      assert_select "input#book_name", :name => "book[name]"
      assert_select "input#book_image", :name => "book[image]"
      assert_select "input#book_author_name", :name => "book[author_name]"
      assert_select "input#book_author_url", :name => "book[author_url]"
      assert_select "textarea#book_description", :name => "book[description]"
    end
  end
end
