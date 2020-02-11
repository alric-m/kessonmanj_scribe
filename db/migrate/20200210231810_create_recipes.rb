class CreateRecipes < ActiveRecord::Migration[5.2]
  def up
    create_table :recipes do |t|
      t.integer :rate
      t.string :author_tip
      t.string :budget
      t.string :prep_time
      t.string :name
      t.string :author
      t.string :difficulty
      t.integer :people_quantity
      t.string :cook_time
      t.string :total_time
      t.string :image
      t.integer :nb_comments
      t.timestamps
    end

    create_table :ingredients do |t|
      t.string :name
      t.timestamps
    end

    create_table :recipes_ingredients do |t|
      t.references :recipe
      t.references :ingredient
      t.timestamps
    end
  end

  def down
    drop_table :recipes
    drop_table :recipes_ingredients
    drop_table :ingredients
  end
end
