require 'rails_helper'

RSpec.describe Subscriber, type: :model do

  it "has none to begin with" do
  	expect(Subscriber.count).to eq 0
  end

  it "has one after adding one" do
    Subscriber.create
    expect(Subscriber.count).to eq 1
  end

  it "has none after one was created in a previous example" do
    expect(Subscriber.count).to eq 0
  end

end
