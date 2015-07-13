class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :description
      t.belongs_to :user

      t.timestamps
    end

    create_table :options do |t|
      t.string :name
      t.integer :votes
      t.string :image_url

      t.timestamps
    end

    create_table :comments do |t|
      t.belongs_to :question, index: true
      t.belongs_to :user, index: true
      t.string :content
    end
  end
end
