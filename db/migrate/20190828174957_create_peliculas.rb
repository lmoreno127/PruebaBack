class CreatePeliculas < ActiveRecord::Migration[5.2]
  def change
    create_table :peliculas do |t|
    t.string :titulo
    t.string :sinopsis
    t.string :posterurl
    t.date :startDate
    t.date :endDate
      t.timestamps
    end
  end
end
