class RestaurantRecommendation < ActiveRecord::Base

  belongs_to :base_restaurant, :foreign_key => :restaurant_id,
                               :class_name => "Restaurant"

  belongs_to :recommended_restaurant, :foreign_key => :recommended_restaurant_id,
                                      :class_name => "Restaurant"

  validates :recommended_restaurant_id, :uniqueness => { :scope => :restaurant_id }
end
