class CreateRestaurantRecommendations < ActiveRecord::Migration
  def change
    create_table :restaurant_recommendations do |t|
      t.integer :restaurant_id, null: false
      t.integer :recommended_restaurant_id, null: false

      t.timestamps null: false
    end

    add_index :restaurant_recommendations, [:restaurant_id, :recommended_restaurant_id], :unique => true, :name => 'recommendation_index'
  end
end
