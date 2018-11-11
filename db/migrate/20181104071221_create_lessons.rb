class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      t.string :image
      t.string :title
      t.string :subtitle
      t.text :content
      t.string :price

      t.timestamps
    end
  end
end
