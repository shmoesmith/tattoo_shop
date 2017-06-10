class Artist < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :shop

  has_many :portfolios, dependent: :destroy

end
