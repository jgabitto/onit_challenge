FactoryBot.define do
  factory :pet do
    name {"sydney"}
    species_id {1} 
    breed_id {1} 
    birth_date {"5/4/2010"} 
    gender {"male"}
    
    species
    breed
  end
end
