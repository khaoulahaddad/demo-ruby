class CreateLivres < ActiveRecord::Migration[5.1]
  def change
    create_table :livres do |t|
      t.string :titre
      t.string :auteur
      t.string :reference
      t.string :etat

      t.timestamps
    end
  end
end
