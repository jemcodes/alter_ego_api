class CreateAnimals < ActiveRecord::Migration[6.1]
  def change
    create_table :animals do |t|
      t.string :real_name
      t.string :alter_ego
      t.string :environment

      t.timestamps
    end
  end
end
