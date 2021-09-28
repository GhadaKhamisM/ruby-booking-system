class CreatePages < ActiveRecord::Migration[6.1]
  def up
    create_table :pages do |t|
      #t.integer 'subject_id'
      t.references :subject, :foreign_key => true
      t.string 'name', :null => false
      t.integer 'permalink', :null => false
      t.integer 'position', :null => false
      t.boolean 'visible', :null => false, :default => false
      t.timestamps
    end
    #add_index('pages','subject_id')
    add_index('pages','permalink')
  end

  def down 
    drop_table :pages
  end
end
