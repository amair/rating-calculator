class Boat < ActiveRecord::Base
  # has_many :race_boats
  # has_many :races, :through => :race_boats
  # has_one :owner_boat, :class_name => "Race", :foreign_key => :owner_boat_id


  scope :local_boats, lambda{|boat| {:conditions => {:racing_area => boat.racing_area}}}

  def name_and_tcc
    tcc= "%.3f" % TCC
    name + " < "+ tcc + " >"
  end

  def name_and_sail_no
    name + " : " + sail_no
  end

  def boat_name_tag
    name.upcase.gsub(/\s+/, "")
  end

  def self.name_tag a_name
    a_name.upcase.gsub(/\s+/, "")
  end

  def self.all_competitors
    Boat.all.uniq_by{|b| [b.name_tag, b.sail_no]}.sort{|b1,b2| b1.name <=> b2.name}
  end

  def self.local_competitors boat
    Boat.local_boats(boat).sort{|b1,b2| b1.name <=> b2.name}
  end

  def is_target_boat race_id
    boat = Race.find(race_id).owner_boat
    if boat.blank?
      false
    else
      id == boat.id
    end
  end


end
