class CreateGames < ActiveRecord::Migration
  def self.up
    create_table :games do |t|
    	t.integer :team1backend_id
    	t.integer :team1frontend_id
    	t.integer :team2backend_id
    	t.integer :team2frontend_id
      t.integer :team1score
      t.integer :team2score
      t.timestamps
    end
  end

  def self.down
    drop_table :games
  end
end
