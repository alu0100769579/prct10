require "spec_helper"

describe Apa do
    before :all do 
    	@libro = Book.new(["Alexby 11","Mangel Ros","Sr Cheeto"], "Salseo Gamer", "Temas de hoy", "2011/7/02", 1, 1)
		@periodico = Libro::Periodico.new(["Rafael Herrero","Daniel Ramos"], "La regeneracion de las gemas", "2011/7/02", "El Mundo", 130)
		@documento = Libro::Elec_Document.new(["Rafael Herrero","Daniel Ramos"], "Estudio del habitat de las gemas", "Universidad de La Laguna", "Oficina de Software Libre de la ULL", "2011/7/02", "PDF", "http://osl.ull.es/noticias/", "2011/7/02")
    end

    before :each do
        @APA = Apa.new
    end
    
    describe "Insertar elementos" do
        it "Insertar libro y bien formateado" do
            @APA.insertar(@libro)
            expect(@APA.to_s).to eq("11, A. & Ros, M. & Cheeto, S. (2011/7/02). Salseo Gamer (1) (1). Temas de hoy.\n")
        end
        it "Insertar periodico y bien formateado" do
            @APA.insertar(@periodico)
            expect(@APA.to_s).to eq("Herrero, R. & Ramos, D. (El Mundo). La Regeneracion de las Gemas. 2011/7/02, pp. 130.\n")
        end
        it "Insertar documento electronico" do
            @APA.insertar(@documento)
            expect(@APA.to_s).to eq("Herrero, R. & Ramos, D. (2011/7/02). Estudio del Habitat de las GemasPDF. Universidad de La Laguna: Oficina de Software Libre de la ULL. Disponible en: http://osl.ull.es/noticias/ (2011/7/02). \n")
        end
        it "Insertar todo y bien formateado" do
        @APA.insertar(@documento)
        @APA.insertar(@periodico)
        @APA.insertar(@libro)
    
        expect(@APA.to_s).to eq("11, A. & Ros, M. & Cheeto, S. (2011/7/02). Salseo Gamer (1) (1). Temas de hoy.\nHerrero, R. & Ramos, D. (2011/7/02). Estudio del Habitat de las GemasPDF. Universidad de La Laguna: Oficina de Software Libre de la ULL. Disponible en: http://osl.ull.es/noticias/ (2011/7/02). \nHerrero, R. & Ramos, D. (El Mundo). La Regeneracion de las Gemas. 2011/7/02, pp. 130.\n")
        end
    end
end