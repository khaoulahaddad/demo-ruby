class CreatePersonnes < ActiveRecord::Migration[5.1]
  def change
    create_table :personnes do |t|
      t.string :nom
      t.string :prenom
      t.string :cin

      t.timestamps
    end
  end
end
