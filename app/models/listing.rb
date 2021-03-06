class Listing < ActiveRecord::Base
  has_many :reservations
  has_many :reviews, through: :reservations
  belongs_to :host, :class_name => "User"
  belongs_to :neighborhood
  has_many :guests, through: :reservations, :foreign_key => 'guest_id'
end 
