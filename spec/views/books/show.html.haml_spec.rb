require 'spec_helper'

describe "books/show" do
  before(:each) do
    @book = assign(:book, stub_model(Book,
      :name => "Name",
      :image => "Image",
      :author_name => "Author Name",
      :author_url => "Author Url",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Image/)
    rendered.should match(/Author Name/)
    rendered.should match(/Author Url/)
    rendered.should match(/MyText/)
  end
end
