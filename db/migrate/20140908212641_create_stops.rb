class CreateStops < ActiveRecord::Migration
  def change
    create_table :stops do |t|
      t.belongs_to :line
      t.belongs_to :station
    end
  end
end
