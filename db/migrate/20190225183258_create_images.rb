class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
	 	 	t.references :imageable, polymorphic: true
    end
  end
end
