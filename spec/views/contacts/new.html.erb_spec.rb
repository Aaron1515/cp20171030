require 'rails_helper'

RSpec.describe "contacts/new", type: :view do
  before(:each) do
    assign(:contact, Contact.new(
      :name => "MyString",
      :email => "MyString",
      :organization => "MyString",
      :status => "MyString",
      :comment => "MyText",
      :note => "MyText"
    ))
  end

  it "renders new contact form" do
    render

    assert_select "form[action=?][method=?]", contacts_path, "post" do

      assert_select "input#contact_name[name=?]", "contact[name]"

      assert_select "input#contact_email[name=?]", "contact[email]"

      assert_select "input#contact_organization[name=?]", "contact[organization]"

      assert_select "input#contact_status[name=?]", "contact[status]"

      assert_select "textarea#contact_comment[name=?]", "contact[comment]"

      assert_select "textarea#contact_note[name=?]", "contact[note]"
    end
  end
end
