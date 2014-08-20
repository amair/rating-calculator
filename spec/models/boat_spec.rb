require 'spec_helper'

describe Boat do
  before :each do

  end

  it { should have_db_column :tcc }
  it { should have_db_column :age_date }
  it { should have_db_column :cert_no }
  it { should have_db_column :cert_year }
  it { should have_db_column :crew }
  it { should have_db_column :dayboat }
  it { should have_db_column :dlr }
  it { should have_db_column :draft }
  it { should have_db_column :endorsed }
  it { should have_db_column :headsails }
  it { should have_db_column :issue_date }
  it { should have_db_column :lh }
  it { should have_db_column :name } 
  it { should have_db_column :non_spin }
  it { should have_db_column :racing_area }
  it { should have_db_column :sail_no }
  it { should have_db_column :series_date }
  it { should have_db_column :short_handed }
  #it { should have_db_column :name_tag }



  # describe "Retrieve all boats in order" do
  #   it 'should return boats in alphabetical order' do
  #     @boat1 = FactoryGirl.create(:boat, {:name => "B Boat", :sail_no => "000", :name_tag => "BBoat"})
  #     @boat2 = FactoryGirl.create(:boat, {:name => "A Boat", :sail_no => "001", :name_tag => "ABoat"})

  #     Boat.all_competitors.should == [@boat2, @boat1]
  #   end

  #   it 'should return boats in alphabetical order' do
  #     boat1 = FactoryGirl.create(:boat, {:name => "B Boat", :sail_no => "000", :name_tag => "BBoat"})
  #     boat2 = FactoryGirl.create(:boat, {:name => "A Boat", :sail_no => "001", :name_tag => "ABoat"})

  #     Boat.local_competitors(boat1).should == [boat2, boat1]
  #   end


  #   it 'should return unique boats in alphabetical order' do
  #     boat1 = FactoryGirl.create(:boat, {:name => "B Boat", :sail_no => "000", :name_tag => "BBoat"})
  #     boat2 = FactoryGirl.create(:boat, {:name => "A Boat", :sail_no => "001", :name_tag => "ABoat"})
  #     boat3 = FactoryGirl.create(:boat, {:name => "B Boat", :sail_no => "000", :name_tag => "BBoat", :TCC => 0.99, :issue_date => "01/04/2013"})

  #     Boat.all_competitors.should == [boat2, boat1]
  #   end
  # end


end
