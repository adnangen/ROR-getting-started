class CreateSubjects < ActiveRecord::Migration[5.1]
  def change
    create_table :subjects do |t|
      t.string :title
      t.string :author
      t.string :language
      t.string :comments

      t.timestamps
    end
  end
end
