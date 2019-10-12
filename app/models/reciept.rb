
class Reciept < ApplicationRecord
    
    

	validates :name, presence: true
	validates :address, presence: true
	validates :contact, presence: true, numericality: true
	validates :reciever, presence: true
	validates :amount, presence: true, numericality: true
end
