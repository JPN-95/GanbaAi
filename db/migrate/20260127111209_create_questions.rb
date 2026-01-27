class CreateQuestions < ActiveRecord::Migration[7.1]
  def change
    create_table :questions do |t|
      t.string :question
      t.string :correct_answer
      t.string :generated_answers, array: true, default: []
      t.string :user_answer
      t.references :test, null: false, foreign_key: true

      t.timestamps
    end
  end
end
