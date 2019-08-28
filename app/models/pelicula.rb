class Pelicula < ApplicationRecord
    has_many :reservas
    validates :reservas, length: { maximum: 10 }
end
