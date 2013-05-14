class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :word
      t.string :base_word
    end
    add_index(:words, :base_word)
  end
end
