class CreateSections < ActiveRecord::Migration[6.1]
  def up
    create_table :sections do |t|
      #t.integer 'page_id'
      t.references :pages, :foreign_key => true
      t.string 'name', :null => false
      t.integer 'position', :null => false
      t.boolean 'visible', :null => false, :default => false
      t.string 'content_type', :null => false
      t.text 'content', :null => false
      t.timestamps
    end
    #add_index('sections','page_id')
  end

  def down 
    drop_table :sections
  end
end
