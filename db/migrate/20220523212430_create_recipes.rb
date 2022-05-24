class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :rate
      t.string :author_tip
      t.string :budget
      t.string :prep_time
      t.string :name
      t.string :author
      t.string :difficulty
      t.string :people_quantity
      t.string :cook_time
      t.string :total_time
      t.string :image
      t.string :nb_comments

      t.timestamps
    end
  end
end
