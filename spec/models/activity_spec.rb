require 'rails_helper'

RSpec.describe Activity, type: :model do
  it "has none to begin with" do
  	expect(Activity.count).to eq 0
  end

  it "has one after adding one" do
    Activity.create
    expect(Activity.count).to eq 1
  end

  it "has none after one was created in a previous example" do
    expect(Activity.count).to eq 0
  end
end
