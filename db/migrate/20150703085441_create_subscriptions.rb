class CreateSubscriptions < ActiveRecord::Migration
	def change
		create_table :subscriptions do |t|
			t.string :name, :null => false
			t.integer :campaign_length, :null => false, :default => 30
			t.datetime :start_date, :null => false
			t.text :contact_details
			t.integer :training_days, :null => false, :default => 7
			
			t.timestamps
		end
	end
end
