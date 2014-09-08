class Stop < ActiveRecord::Base
  validates_presence_of :line_id, :station_id

  belongs_to :line
  belongs_to :station

end
