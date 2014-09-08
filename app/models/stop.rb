class Stop < ActiveRecord::Base
  validates_presence_of :line_id, :station_id

  validates_uniqueness_of :line_id, scope: :station_id
  validates_uniqueness_of :station_id, scope: :line_id

  belongs_to :line
  belongs_to :station


  # default_scope { order('line_id') }

  def self.sort_by_line
    all.sort_by {|stop| stop.line.name}
  end
end
