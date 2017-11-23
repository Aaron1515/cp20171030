require 'rails_helper'

RSpec.describe Subscriber, type: :model do


	let(:subject_1) { Subscriber.new }
	let(:subject_2) { Subscriber.new(name: "John Doe") }
	let(:subject_3) { Subscriber.new(email: "john.doe@email.com") }
	let(:subject_4) { Subscriber.new(name: "John Doe", email: "john.doe@email.com") }
	let(:subject_5)	{ Subscriber.create(name: "John Doe", email: "john.doe@mail.com") }


	describe "Basic Model Test" do

		it "test model 1 to be invalid" do
			expect(subject_1).to be_invalid
		end

		it "test model 2 to be invalid" do
			expect(subject_2).to be_invalid
		end

		it "test model 3 to be valid" do
			expect(subject_3).to be_valid
		end

		it "test model 4 to be valid" do
			expect(subject_3).to be_valid
		end

		it "test model 5 to be valid" do
			expect(subject_3).to be_valid
		end



	  it "has none to begin with" do
	  	expect(Subscriber.count).to eq 0
	  end

	  it "has one after adding one" do
	    subject_5
	    expect(Subscriber.count).to eq 1
	  end

	  it "has none after one was created in a previous example" do
	    expect(Subscriber.count).to eq 0
	  end


	 #  it "is valid with valid attributes" do
	 #    subject_2
	 #    expect(subject_2).to be_valid
	 #  end

		# it "is not valid without note" do
	 #    expect(subject).to_not be_valid
	 #  end

	 #  it "create a valid entry" do
	 #    work = subject_3
	 #    expect(work).to be_valid
	 #  end

	 #  it "save 1 entry" do
	 #    subject_2.save
	 #    expect(Subscriber.count).to eq 1
	 #  end

	 #  it "save 2 entry" do
	 #    subject_1.note = "success"
	 #    subject_1.save
	 #    work = Subscriber.new(note: "test2")
	 #    work.save
	 #    expect(Subscriber.count).to eq 2
	 #  end

	 #  it "save 1 entry & create 1 entry" do
	 #    subject_1.note = "success"
	 #    subject_1.save
	 #    work2 = Subscriber.create(note: "John successfully logged in.")
	 #    expect(Subscriber.count).to eq 2
	 #  end

	 #  it "create 2 entry, only saving 1" do
		# 	subject_1.save
		# 	subject_3
	 #    expect(Subscriber.count).to eq 1
	 #  end

	 #  it "expect 1st entry's note to have equal 'success' " do
	 #    subject_3
	 #    expect(Subscriber.all.first.note).to eq("successful")
	 #  end


	end



	describe "Association Test" do

		it "should have and belongs to many subscribers" do
			test = Subscriber.reflect_on_association(:activities)
			expect(test.macro).to eq(:has_and_belongs_to_many)
		end

	end


end


