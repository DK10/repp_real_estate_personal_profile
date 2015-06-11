class Unit < ActiveRecord::Base


  has_many :applications

  belongs_to :landlord

  has_many :tenants, :through => :applications
end
