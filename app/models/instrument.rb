class Instrument < ApplicationRecord
    has_many :artists
    has_many :artistinstruments, through: :artists

    
end
