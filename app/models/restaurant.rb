class Restaurant < ActiveRecord::Base

  has_many :restaurant_recommendations, :foreign_key => :restaurant_id,
                                        :class_name => "RestaurantRecommendation"

  has_many :recommended_restaurants, :through => :restaurant_recommendations,
                                     :source => :recommended_restaurant

  has_many :incoming_recommendations, :foreign_key => :recommended_restaurant_id,
                                      :class_name => "RestaurantRecommendation"

  has_many :recommended_by_restaurants, :through => :incoming_recommendations,
                                       :source => :base_restaurant

end
