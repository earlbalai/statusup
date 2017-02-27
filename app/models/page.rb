class Page < ApplicationRecord
  belongs_to :user
  has_many :incidents
  has_many :incident_templates
  has_many :scheduled_maintenances
end
