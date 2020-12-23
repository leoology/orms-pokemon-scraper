class Pokemon
    attr_accessor :id, :name, :type, :db

    def initialize (id)
        @id=id
        @name=name
        @type=type
        @db=db
    end

    def self.save(name, type, db)	
        db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)	
      end	
    
      def self.find(id ,db)	
        pokemon_array= db.execute("SELECT * FROM pokemon WHERE id=?", id).first

        @pokemon= Pokemon.new(id)
       @pokemon.name= pokemon_array[1]
       @pokemon.type= pokemon_array[2] 
    	@pokemon
      end


end
