package BackEnd;

import jakarta.servlet.http.HttpServletRequest;

public class Person {
	private String nickname;
	private String password;
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	public void Verify(HttpServletRequest request) {
		String hatalar ="";
		if(nickname==null || nickname.trim().length() >=16) {
			hatalar +=" kullanıcı adı boş veya 16 karakterden uzun olamaz.";
		}
		
		if(password==null || password.trim().length()<8) {
			hatalar += " şifre boş veya 8 karakterden az olamaz";
		}
		if(password.trim().length()>20) {
			hatalar+=" şifre 20 karakterden fazla olamaz";
		}
		
		if(hatalar.trim().length()>0) {
			request.setAttribute("verifyErrors", hatalar);
		}
	}
	
	
	
}
//	public String getName() {
//		return new String(name);
//	}
//	public void setName(String name) {
//		this.name=name.toCharArray();
//	}
	
//}
