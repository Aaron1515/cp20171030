require 'rails_helper'

RSpec.describe Activity, type: :model do

	let(:user)	{ Subscriber.create(name: "test", email: "something@something.com") }

	let(:subject_1) { Activity.new }
	let(:subject_2) { Activity.new(note: "success") }
	let(:subject_3) { Activity.new(note: "success", info: user) }
	let(:subject_4)	{ Activity.create(note: "successful", info: user) }

	describe "Subjects tests" do
 
		it "test subject_1 to be invalid" do
			expect(subject_1).to be_invalid
		end

		it "test subject_2 to be valid" do
			expect(subject_2).to be_valid
		end

		it "test subject_3 to be valid" do
			expect(subject_3).to be_valid
		end

		it "test subject_4 to be valid" do
			expect(subject_4).to be_valid
		end

	end


	describe "Basic tests" do


	  it "has none to begin with" do
	  	expect(Activity.count).to eq 0
	  end

	  it "has one after adding one" do
	    subject_4
	    expect(Activity.count).to eq 1
	  end

	  it "has none after one was created in a previous example" do
	    expect(Activity.count).to eq 0
	  end

	end

	describe "Attribute tests" do

	  it "valid with notes only" do
	    subject_2
	    expect(subject_2).to be_valid
	  end

		it "invalid without notes" do
	    expect(subject_1).to be_invalid
	  end

	  it "valid entry using .create method" do
	  	subject_4
	    expect(Activity.count).to eq 1
	  end

	  it "valid entry using .save method" do
	  	subject_3.save
	    expect(Activity.count).to eq 1
	  end

	  it "save 2 entry" do
	  	subject_3.save
	  	subject_4
	    expect(Activity.count).to eq 2
	  end

	  it "save 3 entry" do
	  	subject_2.save
	  	subject_3.save
	  	subject_4
	    expect(Activity.count).to eq 3
	  end

	  it "save 1 entry, created 2" do
			subject_1.save
			subject_4
	    expect(Activity.count).to eq 1
	  end

	  it "save 2 entry using same note" do
	  	Activity.create(note: 'success')
	  	Activity.create(note: 'success')
	    expect(Activity.count).to eq 2
	  end

	  it "last entry's note to equal 'successful' " do
	    subject_4
	    expect(Activity.all.last.note).to eq("successful")
	  end


	end


	describe "Association Test" do

		it "has belongs_to info:" do
			test = Activity.reflect_on_association(:info)
			expect(test.macro).to eq(:belongs_to)
		end

		

	end


end
