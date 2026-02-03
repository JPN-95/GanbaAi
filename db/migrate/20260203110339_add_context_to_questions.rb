class AddContextToQuestions < ActiveRecord::Migration[7.1]
  def change
    add_column :questions, :context, :text, default: ""
  end
end
