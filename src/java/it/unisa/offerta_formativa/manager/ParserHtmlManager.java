package it.unisa.offerta_formativa.manager;

import java.io.IOException;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;


/**
 * 
 * @author Davide
 *
 */
public class ParserHtmlManager {

	/**
	 * instance of this class, obtainable only by @getInstance()
	 */
	private static ParserHtmlManager instance = null;
	
	private ParserHtmlManager(){
	}
	
	/**
	 * Singleton Pattern
	 * @return the unique instance of this class
	 */
	public static ParserHtmlManager getInstance(){
		if(instance == null){
			instance = new ParserHtmlManager();
		}
		return instance;
	}
	
	public String getHtml(String link){
		Document doc;
                String toReturn = null;
		Element didattica = null;
		try {
			doc = Jsoup.connect(link).get();
			didattica = doc.getElementById("column1of2");
                        
                        String rep1= didattica.toString().replace("“", "\"");
                        String rep2= rep1.replace("”", "\"");
                        toReturn= rep2.replace("’", "'");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    	    
	    return toReturn;
	}
	
}
