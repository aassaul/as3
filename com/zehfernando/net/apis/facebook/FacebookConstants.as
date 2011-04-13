package com.zehfernando.net.apis.facebook {

	import flash.system.Security;
	/**
	 * @author zeh
	 */
	public class FacebookConstants {
		
		// Constants
		public static const ID_USER_OWN:String = "me";
		
		public static const PARAMETER_IDS_NAME:String = "ids";
		public static const PARAMETER_FIELDS_NAME:String = "fields";
		public static const PARAMETER_LIMIT_NAME:String = "limit";

		public static const PARAMETER_LIST_SEPARATOR:String = ",";

		public static const PARAMETER_AUTHOR_ID:String = "[[author_id]]";
		public static const PARAMETER_USER_ID:String = "[[user_id]]";
		public static const PARAMETER_ALBUM_ID:String = "[[album_id]]";
		public static const PARAMETER_TARGET_ID:String = "[[target_id]]";
		
		public static const PARAMETER_AUTH_APP_ID:String = "[[app_id]]";
		public static const PARAMETER_AUTH_REDIRECT_URL:String = "[[redirect_url]]";
		public static const PARAMETER_AUTH_PERMISSIONS:String = "[[scope]]";
		
		public static const SERVICE_DOMAIN:String = "https://graph.facebook.com";
		public static const SERVICE_FEED:String = "/[[author_id]]/feed";
		public static const SERVICE_FEED_POST:String = "/[[target_id]]/feed";
		public static const SERVICE_ALBUMS:String = "/[[author_id]]/albums";
		public static const SERVICE_ALBUM_PHOTOS:String = "/[[album_id]]/photos";
		public static const SERVICE_USER:String = "/[[user_id]]";
		public static const SERVICE_USERS:String = "/";
		public static const SERVICE_USER_FRIENDS:String = "/[[user_id]]/friends";
		public static const SERVICE_USER_PHOTOS:String = "/[[user_id]]/photos";
		
		public static const SERVICE_FILE_PICTURE:String = "/[[author_id]]/picture";
		public static const SERVICE_FILE_PICTURE_SQUARE:String = "/[[author_id]]/picture?type=square";		// 50x50 but zoomed (default)
		public static const SERVICE_FILE_PICTURE_SMALL:String = "/[[author_id]]/picture?type=small";		// 50 pixels wide, variable height
		public static const SERVICE_FILE_PICTURE_NORMAL:String = "/[[author_id]]/picture?type=normal";		// 100x100
		public static const SERVICE_FILE_PICTURE_LARGE:String = "/[[author_id]]/picture?type=large";		// 200 pixels wide, variable height
		
		public static const AUTHORIZE_URL:String = "https://graph.facebook.com/oauth/authorize?client_id=[[app_id]]&redirect_uri=[[redirect_url]]&type=user_agent&display=popup&scope=[[scope]]";
		public static const LOGOUT_URL:String = "http://m.facebook.com/logout.php?confirm=1&next=[[redirect_url]]";
		//public static const LOGOUT_URL:String = "http://www.facebook.com/logout.php?api_key=[[app_id]]&;session_key=[[session_key]]";
		
		// UGH. This is temporary. Hopefully.
		// First is original, rest is replacements (random)
		public static const IMAGE_DOMAIN_REPLACEMENTS:Array = [["https://fbcdn-sphotos-a.akamaihd.net/", "http://a1.sphotos.ak.fbcdn.net/", "http://a2.sphotos.ak.fbcdn.net/", "http://a3.sphotos.ak.fbcdn.net/", "http://a4.sphotos.ak.fbcdn.net/", "http://a5.sphotos.ak.fbcdn.net/", "http://a6.sphotos.ak.fbcdn.net/", "http://a7.sphotos.ak.fbcdn.net/", "http://a8.sphotos.ak.fbcdn.net/"]];
		// Initializations
		
		{
			Security.loadPolicyFile("http://graph.facebook.com/crossdomain.xml");
			Security.loadPolicyFile("https://graph.facebook.com/crossdomain.xml");
			//Security.loadPolicyFile("http://fbcdn-sphotos-a.akamaihd.net/crossdomain.xml");
			//Security.loadPolicyFile("https://fbcdn-sphotos-a.akamaihd.net/crossdomain.xml");
			Security.loadPolicyFile("http://profile.ak.fbcdn.net/crossdomain.xml");
			Security.loadPolicyFile("https://profile.ak.fbcdn.net/crossdomain.xml");
			//Security.loadPolicyFile("http://static.ak.fbcdn.net/crossdomain.xml"); // Doesn't allow
		}
		
		//https://graph.facebook.com/oauth/authorize?client_id=147149585329358&redirect_uri=http://www.facebook.com/connect/login_success.html&type=user_agent&display=popup
	}
}