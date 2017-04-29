class CreateCandidates < ActiveRecord::Migration[5.0]
  def change
    create_table :candidates do |t|
      t.string :name
      t.integer :age
      t.string :party
      t.string :politics
      t.integer :votes, default: 0

      t.timestamps
    end
  end
end
