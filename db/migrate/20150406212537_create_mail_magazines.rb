class CreateMailMagazines < ActiveRecord::Migration
  def change
    create_table :mail_magazines do |t|
      t.string :title

      t.timestamps
    end
  end
end
