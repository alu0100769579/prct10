class Libro
	
		include Comparable
		
		attr_accessor :autor, :titulo, :serie, :editorial, :edicion, :publicacion
		def initialize(autor, titulo, serie, editorial, edicion, publicacion)
			@autor = autor
			@titulo = titulo
			@serie = serie
			@editorial = editorial
			@edicion = edicion
			@publicacion = publicacion
		end
		def to_s
		    "#{@autor}\n#{@titulo}\n#{@serie}\n#{@editorial}; #{@edicion} (#{@publicacion})\n"
		end
		
		def <=> (other)
			
			@publicacion <=> other.publicacion	
		end
end

class Book < Libro
	attr_accessor :isbn
	
	def initialize(autor, titulo, serie, editorial, edicion, publicacion, isbn)
		
		super :autor,:titulo, :serie, :editorial, :edicion, :publicacion
	
			@autor = autor
			@titulo = titulo
			@serie = serie
			@editorial = editorial
			@edicion = edicion
			@publicacion = publicacion
			@isbn = isbn
	end
	def to_s
		
		super :autor,:titulo, :serie, :editorial, :edicion, :publicacion
	
		"#{@autor}\n#{@titulo}\n#{@serie}\n#{@editorial}; #{@edicion} (#{@publicacion})\n#{@isbn}"
	end
end

class Magazine < Libro
	
	attr_accessor :issn
	
	def initialize(autor, titulo, serie, editorial, edicion, publicacion, issn)
		super :autor,:titulo, :serie, :editorial, :edicion, :publicacion
	
			@autor = autor
			@titulo = titulo
			@serie = serie
			@editorial = editorial
			@edicion = edicion
			@publicacion = publicacion
			@issn = issn
	end
	def to_s
		super :autor,:titulo, :serie, :editorial, :edicion, :publicacion
	
		"#{@autor}\n#{@titulo}\n#{@serie}\n#{@editorial}; #{@edicion} (#{@publicacion})\n#{@issn}"
	end
end



class Elec_Document < Libro
	
	attr_accessor :url
	
	def initialize(autor, titulo, serie, editorial, edicion, publicacion, url)
		super :autor,:titulo, :serie, :editorial, :edicion, :publicacion
		
			@autor = autor
			@titulo = titulo
			@serie = serie
			@editorial = editorial
			@edicion = edicion
			@publicacion = publicacion
			@url = url
	end
	def to_s
		super :autor,:titulo, :serie, :editorial, :edicion, :publicacion
	
		"#{@autor}\n#{@titulo}\n#{@serie}\n#{@editorial}; #{@edicion} (#{@publicacion})\n#{@url}"
	end
end
