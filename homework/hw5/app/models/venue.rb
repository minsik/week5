class Venue < ActiveRecord::Base
  attr_accessible :address, :name

  has_many :events

  validates_presence_of :address,
    :message => "The venue address can't be blank."
  validates_presence_of :name,
    :message => "The venue name can't be blank."
end
