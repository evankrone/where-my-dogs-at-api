class Walk < ApplicationRecord
    belongs_to :owner, required: false
    belongs_to :walker, required: false

    
end
