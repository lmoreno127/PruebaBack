class CreateReservas < ActiveRecord::Migration[5.2]
  def change
    create_table :reservas do |t|
      t.string :nombres
      t.string :cedula
      t.string :email
      t.timestamps
    end
  end
end
