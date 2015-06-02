class Note < ActiveRecord::Base
  belongs_to :event
  validates :note_body, :presence => true
end
