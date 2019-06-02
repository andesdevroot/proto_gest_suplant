class Socio < ApplicationRecord
	has_many :consultum
	has_many :recepcion
	has_many :list
end
