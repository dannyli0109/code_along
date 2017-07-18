
class Dish < ActiveRecord::Base
  def dish_type_name
    return self.dish_type_id ? DishType.find(self.dish_type_id).name : "no type selected"
  end
end
