class CreateReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations do |t|
      t.belongs_to :livre
      t.belongs_to :persone
      t.date :date_emprunt
      t.date :date_retour, null: true

      t.timestamps
    end
  end
end
