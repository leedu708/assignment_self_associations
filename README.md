assignment_self_associations
============================

This is the self-reflective association. This is the self-reflective association. This is the self-reflective association. This is the self-reflective association...


A restaurant can have many recommended restaurants

A restaurant that is a recommendation for another restaurant can also have many recommended restaurants.  This gives an X:X relationship.

Join table
  restaurant_recommendations
    - Foreign Keys:
      1. restaurant_id
      2. recommended_restaurant_id