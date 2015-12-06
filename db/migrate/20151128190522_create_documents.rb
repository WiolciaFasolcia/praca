class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :url
      t.date :date
      t.string :name
     # t.integer :project_id
      t.integer :dziedzina_id
      t.integer :user_id

      t.timestamps null: false
    end
    # add_foreign_key :documents, :projects
    add_foreign_key :documents, :dziedzinas
    add_foreign_key :documents, :users
  end
end