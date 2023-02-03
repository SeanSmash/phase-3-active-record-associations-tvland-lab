class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network

    def actors_list
        actor_list = []
        self.actors.map do |actor|
            actor_list << "#{actor.first_name} #{actor.last_name}"
        end
        actor_list
    end
  
end