class CityOptionSerializer < ActiveModel::Serializer
  attributes :id, :city_name, :spending_category_id
  belongs_to :spending_category
  # class SpendingDatumSerializer < ActiveModel::Serializer
  #   attributes :id, :food_non_alcoholic_drinks, :alcoholic_drinks_tobacco_narcotics, :clothing_footwear, :household_bills, :recreation_culture, :education, :resturants_hotels, :transport
  # end
end
