require 'rails_helper'

RSpec.describe "contacts/edit", type: :view do
  before(:each) do
    @contact = assign(:contact, Contact.create!(
      :name => "MyString",
      :email => "MyString",
      :organization => "MyString",
      :status => "MyString",
      :comment => "MyText",
      :note => "MyText"
    ))
  end

  it "renders the edit contact form" do
    render

    assert_select "form[action=?][method=?]", contact_path(@contact), "post" do

      assert_select "input#contact_name[name=?]", "contact[name]"

      assert_select "input#contact_email[name=?]", "contact[email]"

      assert_select "input#contact_organization[name=?]", "contact[organization]"

      assert_select "input#contact_status[name=?]", "contact[status]"

      assert_select "textarea#contact_comment[name=?]", "contact[comment]"

      assert_select "textarea#contact_note[name=?]", "contact[note]"
    end
  end
end
