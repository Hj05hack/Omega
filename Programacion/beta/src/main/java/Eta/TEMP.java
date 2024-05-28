package Eta;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
public class TEMP {
    public static void main(String[] args) {
        List<String> elementos = new ArrayList<>();
        elementos.add("Mimosa Semilla Bayleyana");
        elementos.add("Mimosa Semilla Espectabilis");
        elementos.add("Mimosa Semilla Longifolia");
        elementos.add("Mimosa Semilla Floribunda 4 estaciones");
        elementos.add("Abelia Floribunda");
        elementos.add("Callistemom (Mix)");
        elementos.add("Corylus Avellana \"Contorta\"");
        elementos.add("Escallonia (Mix)");
        elementos.add("Evonimus Emerald Gayeti");
        elementos.add("Evonimus Pulchellus");
        elementos.add("Hibiscus Syriacus  \"Helene\" -Blanco-C.rojo");
        elementos.add("Hibiscus Syriacus \"Pink Giant\" Rosa");
        elementos.add("Lonicera Nitida \"Maigrum\"");
        elementos.add("Prunus pisardii");
        elementos.add("Weigelia \"Bristol Ruby\"");
        elementos.add("Leptospermum formado PIRAMIDE");
        elementos.add("Leptospermum COPA");
        elementos.add("Nerium oleander-CALIDAD \"GARDEN\"");
        elementos.add("Nerium Oleander Arbusto GRANDE");
        elementos.add("Nerium oleander COPA  Calibre 6/8");
        elementos.add("ROSAL TREPADOR");
        elementos.add("Solanum Jazminoide");
        elementos.add("Wisteria Sinensis  azul, rosa, blanca");
        elementos.add("Wisteria Sinensis INJERTADAS DECÃ“");
        elementos.add("Bougamvillea Sanderiana Tutor");
        elementos.add("Bougamvillea Sanderiana Espaldera");
        elementos.add("Bougamvillea Sanderiana, 3 tut. piramide");
        elementos.add("Expositor Árboles clima mediterráneo");
        elementos.add("Expositor Árboles borde del mar");
        elementos.add("Brachychiton Acerifolius");
        elementos.add("Cassia Corimbosa");
        elementos.add("Cassia Corimbosa");
        elementos.add("Chitalpa Summer Bells");
        elementos.add("Erytrina Kafra");
        elementos.add("Eucalyptus Citriodora");
        elementos.add("Eucalyptus Ficifolia");
        elementos.add("Hibiscus Syriacus  Var. Injertadas 1 Tallo");
        elementos.add("Lagunaria Patersonii");
        elementos.add("Lagunaria Patersonii");
        elementos.add("Morus Alba");
        elementos.add("Platanus Acerifolia");
        elementos.add("Salix Babylonica  Pendula");
        elementos.add("Tamarix  Ramosissima Pink Cascade");
        elementos.add("Tecoma Stands");
        elementos.add("Tecoma Stands");
        elementos.add("Tipuana Tipu");
        elementos.add("Pleioblastus distichus-Bambú enano");
        elementos.add("Sasa palmata");
        elementos.add("Phylostachys aurea");
        elementos.add("Phylostachys Bambusa Spectabilis");
        elementos.add("Phylostachys biseti");
        elementos.add("Pseudosasa japonica (Metake)");
        elementos.add("Pseudosasa japonica (Metake)");
        elementos.add("Cedrus Deodara \"Feeling Blue\" Novedad");
        elementos.add("Juniperus chinensis \"Blue Alps\"");
        elementos.add("Juniperus Chinensis Stricta");
        elementos.add("Juniperus squamata \"Blue Star\"");
        elementos.add("Juniperus x media Phitzeriana verde");
        elementos.add("Bismarckia Nobilis");
        elementos.add("Brahea Armata");
        elementos.add("Brahea Edulis");
        elementos.add("Butia Capitata");
        elementos.add("Chamaerops Humilis");
        elementos.add("Chamaerops Humilis \"Cerifera\"");
        elementos.add("Chrysalidocarpus Lutescens -ARECA");
        elementos.add("Cordyline Australis -DRACAENA");
        elementos.add("Cycas Revoluta");
        elementos.add("Dracaena Drago");
        elementos.add("Livistonia Decipiens");
        elementos.add("Rhaphis Excelsa");
        elementos.add("Sabal Minor");
        elementos.add("Trachycarpus Fortunei");
        elementos.add("Washingtonia Robusta");
        elementos.add("Zamia Furfuracaea");

        Set<String> repetidos = new HashSet<>();
        Set<String> unicos = new HashSet<>();

        for (String elemento : elementos) {
            if (!unicos.add(elemento)) {
                repetidos.add(elemento);
            }
        }

        System.out.println("Elementos repetidos:");
        for (String repetido : repetidos) {
            System.out.println(repetido);
        }
    }
}


