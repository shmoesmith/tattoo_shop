class Porfolio < ApplicationRecord
  validates_presence_of :style

  belongs_to :artist

end
