class Job < ActiveRecord::Base
  validates :title, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :location, presence: true
  validates :event_type, presence: true
  validates :requirements, presence: true,
                           length: { minimum: 100 }
  validates :description, presence: true,
                          length: { minimum: 100 }
end
