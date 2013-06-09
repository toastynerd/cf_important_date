class Event < ActiveRecord::Base
  attr_accessible :date, :details, :event

  validates :date, :presence => true
  validates :event, :presence => true
  validates :details, :presence => true
end
