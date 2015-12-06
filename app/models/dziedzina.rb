class Dziedzina < ActiveRecord::Base
	belongs_to :users
	belongs_to :documents
end
