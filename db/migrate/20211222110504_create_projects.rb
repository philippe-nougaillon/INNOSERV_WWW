class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :initWithValues
      t.string :description
      t.string :image
      t.text :information
      t.string :website
      t.string :videofile
      t.string :subTitles
      t.boolean :fieldOfEducation, null: false, default: false
      t.boolean :fieldOfWelfare, null: false, default: false
      t.boolean :fieldOfHealth, null: false, default: false

      t.timestamps
    end
  end
end
