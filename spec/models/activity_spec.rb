require 'rails_helper'

RSpec.describe Activity, type: :model do


	describe "Basic Model Test" do

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

	  it "create a valid entry" do
	    work = Activity.create
	    expect(work).to be_valid
	  end

	  it "save 1 entry" do
	    work = Activity.new
	    work.save
	    expect(Activity.count).to eq 1
	  end

	  it "save 2 entry" do
	    work1 = Activity.new
	    work1.save
	    work2 = Activity.new
	    work2.save
	    expect(Activity.count).to eq 2
	  end

	  it "save 1 entry & create 1 entry" do
	    work1 = Activity.new
	    work1.save
	    work2 = Activity.create(note: "John successfully logged in.")
	    expect(Activity.count).to eq 2
	  end

	  it "expect 1st entry's note to have equal 'success' " do
	    work = Activity.create(note: "success")
	    expect(Activity.all.first.note).to eq("success")
	  end

	end

	describe "Association Test" do

		it "" do

		end

	end


end
