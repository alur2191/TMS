class Loadboard < ApplicationRecord
    belongs_to :driver
    belongs_to :truck
    belongs_to :trailer
end
