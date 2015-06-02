class Task < ActiveRecord::Base
  belongs_to :event , :class_name => "Event", :foreign_key => "event_id"
  belongs_to :contact

  validates :description, :presence => true
  validates :due_on, :presence => true
end
