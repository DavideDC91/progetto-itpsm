package it.unisa.offerta_formativa.moodle.manager;

import java.io.UnsupportedEncodingException;

import it.unisa.offerta_formativa.moodle.moodlerest.*;

/**
 * 
 * @author Davide
 *
 */
public class MoodleUserManager {

	/**
	 * instance of this class, obtainable only by @getInstance()
	 */
	private static MoodleUserManager instance = null;
	
	private MoodleUserManager(){
		MoodleCallRestWebService.init("http://localhost/moodle/webservice/rest/server.php", "2c6f2faa8aac80fc912cff9f6f8bad66", false);
	}
	
	/**
	 * Singleton Pattern
	 * @return the unique instance of this class
	 */
	public static MoodleUserManager getInstance(){
		if(instance == null){
			instance = new MoodleUserManager();
		}
		return instance;
	}
	
	/**
	 * Create User into the Moodle Database
	 * @param username
	 * @param password
	 * @param firstname
	 * @param lastname
	 * @param email
	 * @return true if all goes well
	 */
	public boolean createUser(String username, String password, String firstname, String lastname, String email){
		try {
			MoodleUser user=new MoodleUser(username, password,firstname, lastname, email);
			MoodleRestUser.createUser(user);
			return true;
		} catch (MoodleRestException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
		// TODO Auto-generated method stub
	}
	
	/**
	 * Get Id of user by username
	 * @param username
	 * @return Id or -1 if doesn't exists
	 */
	public int getIdByUsername(String username){
		try {
			UserFieldSearch fieldSearch = UserFieldSearch.USERNAME;
			String user[] = {username};
			MoodleUser[] users=MoodleRestUser.getUsersByField(fieldSearch.USERNAME, user);
			int iduser=Integer.parseInt(String.valueOf(users[0].getId())) ;
			return iduser;
		} catch (MoodleRestException | UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return -1;
		}
		// TODO Auto-generated method stub
	}
}
