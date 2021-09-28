class CreateSectionEditors < ActiveRecord::Migration[6.1]
  def up
    create_table :section_editors do |t|
      t.references :doctor, :foreign_key => true
      t.references :section, :foreign_key => true
      t.string 'summary'
      t.timestamps
    end
  end

  def down
    drop_table :section_editors
  end
end
