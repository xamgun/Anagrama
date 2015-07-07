class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :word1
      t.string :word2
      t.boolean :anagrama

      t.timestamps
    end
  end
end
