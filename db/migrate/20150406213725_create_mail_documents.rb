class CreateMailDocuments < ActiveRecord::Migration
  def change
    create_table :mail_documents do |t|
      t.text :text
      t.string :video
      t.string :picture

      t.timestamps
    end
  end
end
