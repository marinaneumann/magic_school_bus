class Line < ActiveRecord::Base
  validates :name, :presence => true
  validates_uniqueness_of :name

  has_many :stops, :dependent => :destroy
  has_many :stations, through: :stops

end
