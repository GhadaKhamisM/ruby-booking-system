class CreateDoctors < ActiveRecord::Migration[6.1]
  def up
    create_table :doctors do |t|
      t.string 'name' , :limit => 150;
      t.string 'mobile', :null => false
      t.string 'password', :null => false
      t.integer 'time_slot',:null => false
      t.timestamps
    end
  end

  def down
    drop_table :doctors
  end
end
