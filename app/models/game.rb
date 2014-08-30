class Game < ActiveRecord::Base

  belongs_to :sport
  belongs_to :show
  has_many :users


end
