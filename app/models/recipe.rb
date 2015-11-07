class Recipe < ActiveRecord::Base
    belongs_to :chef
    validates :chef_id, presence: true
    validates :name, presence: true, length:{ maximum: 100, too_long: "%{count} characters is more than maximum allowed", minimum: 5}
    validates :summary, presence: true, length:{ maximum: 100, too_long: "%{count} characters is more than maximum allowed", minimum: 10}
    validates :description, presence: true, length:{ maximum: 500, too_long: "%{count} characters is more than maximum allowed", minimum: 15}
    
end