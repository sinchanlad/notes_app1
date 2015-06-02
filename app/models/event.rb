class Event < ActiveRecord::Base
has_many :tasks , :class_name => "Task", :foreign_key => "event_id"
has_many :notes
belongs_to :user

validates :name, :presence => true, :uniqueness => true
end
