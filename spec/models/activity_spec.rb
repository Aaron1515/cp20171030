require 'rails_helper'

RSpec.describe Activity, type: :model do

	let(:subscriber)	{ Subscriber.create(name: "test", email: "something@something.com") }
	let(:subject_1) { Activity.new }
	let(:subject_2) { Activity.new(note: "success", subscriber_id: subscriber.id) }
	let(:subject_3)	{ Activity.create(note: "successful", subscriber_id: subscriber.id) }

	describe "Basic Model Test" do

		it "test model 1 to be invalid" do
			expect(subject_1).to be_invalid
		end

		it "test model 2 to be valid" do
			expect(subject_2).to be_valid
		end

		it "test model 3 to be valid" do
			expect(subject_3).to be_valid
		end



	  it "has none to begin with" do
	  	expect(Activity.count).to eq 0
	  end

	  it "has one after adding one" do
	    subject_3
	    expect(Activity.count).to eq 1
	  end

	  it "has none after one was created in a previous example" do
	    expect(Activity.count).to eq 0
	  end


	  it "is valid with valid attributes" do
	    subject_2
	    expect(subject_2).to be_valid
	  end

		it "is not valid without note" do
	    expect(subject).to_not be_valid
	  end

	  it "create a valid entry" do
	    work = subject_3
	    expect(work).to be_valid
	  end

	  it "save 1 entry" do
	    subject_2.save
	    expect(Activity.count).to eq 1
	  end

	  it "save 2 entry" do
	    subject_1.note = "success"
	    subject_1.subscriber_id = subscriber.id
	    subject_1.save
	    work = Activity.new(note: "test2", subscriber_id: subscriber.id)
	    work.save
	    expect(Activity.count).to eq 2
	  end

	  it "save 1 entry & create 1 entry with same user" do
	    subject_1.note = "success"
	    subject_1.subscriber_id = subscriber.id
	    subject_1.save
	    work2 = Activity.create(note: "John successfully logged in.", subscriber_id: subscriber.id)
	    expect(Activity.count).to eq 2
	  end

	  it "create 2 entry, only saving 1" do
			subject_1.save
			subject_3
	    expect(Activity.count).to eq 1
	  end

	  it "expect entry note to have equal 'successful' " do
	    subject_3
	    expect(Activity.all.first.note).to eq("successful")
	  end


	end


	describe "Association Test" do

		it "should have and belongs to many subscribers" do
			test = Activity.reflect_on_association(:subscriber)
			expect(test.macro).to eq(:belongs_to)
		end

	end


end
