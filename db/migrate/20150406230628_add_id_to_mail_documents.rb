class AddIdToMailDocuments < ActiveRecord::Migration
  def change
    add_column :mail_documents, :mail_magazine_id, :integer
  end
end
