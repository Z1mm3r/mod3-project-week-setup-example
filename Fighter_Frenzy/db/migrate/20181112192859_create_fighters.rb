class CreateFighters < ActiveRecord::Migration[5.2]
  def change
    create_table :fighters do |t|
      t.string :name
      t.string :img_url
      t.string :description
      t.integer :speed
      t.integer :power
      t.integer :intellect
      t.integer :defense
      t.integer :max_hp
      t.integer :max_stamina
      t.timestamps
    end
  end
end
