class Movie < ApplicationRecord
  belongs_to :studio
  has_many :movie_actors
  has_many :actors, through: :movie_actors

  def orders_actors_by_age
    actors.order(:age)
  end

  def average_age
    actors.average(:age)
  end
end
