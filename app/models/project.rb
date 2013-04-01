class Project < ActiveRecord::Base
  attr_accessible :name

  after_commit :fire_this_method

  def fire_this_method
  end
end
