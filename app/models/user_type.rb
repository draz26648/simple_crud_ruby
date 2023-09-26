class UserType < ApplicationRecord
    # This is the "belongs_to" side of the "has_many" relationship
    
    belongs_to :user_data
end
