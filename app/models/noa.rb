class Noa < ApplicationRecord
 validates :animal, presence: true
 validates :kinds, presence: true    
end
