package back;
import java.util.Hashtable;

public class User {
	private String adi;
	private String soyadi;
	private String email;
	private String kullaniciadi;
	private String cinsiyet;
	private String parola1;
	private String parola2;
	private String postakodu;
	private String adres;
	private String[] tecrubeleri;
	private Hashtable<String,String> hatalar;
	
	public boolean kontrolFonksiyonu() {
		boolean hatadurumu=true;
		if(adi.equals("")) {
			hatalar.put("adi", "Lütfen adınızı giriniz.");
			adi="";
			hatadurumu =false;
		}
		if(soyadi.equals("")) {
			hatalar.put("soyadi", "Lütfen soyadınızı giriniz.");
			soyadi="";
			hatadurumu=false;
		}
		if(email.equals("") || (email.indexOf('@')==-1)) {
			hatalar.put("email", "Lütfen geçerli bir email giriniz.");
			email="";
			hatadurumu=false;
		}
		if(kullaniciadi.equals("")) {
			hatalar.put("kullaniciadi", "Lütfen kullanıcı adınızı giriniz.");
			kullaniciadi="";
			hatadurumu =false;
		}
		if(parola1.equals("") || parola2.equals("")) {
			hatalar.put("parola", "Parola bölümünü boş bırakamazsınız.");
			parola1="";
			parola2="";
			hatadurumu =false;
		}
		if(!(parola2.equals(parola1))) {
			hatalar.put("parola1", "Parolaları aynı giriniz.");
			parola2="";
			hatadurumu =false;
		}
		if(postakodu.equals("")) {
			hatalar.put("postakodu", "Lütfen postakodu giriniz.");
			postakodu="";
			hatadurumu =false;
		}else {
			try {
				int sayi=Integer.parseInt(postakodu);
			}catch (NumberFormatException e) {
				hatalar.put("postakodu", "Lütfen sadece sayı giriniz.");
				postakodu="";
				hatadurumu=false;
			}
		}
		return hatadurumu;
	}
	public String getHataMesajları(String hataCumleleri) {
		
		String hataMesajları = (String)hatalar.get(hataCumleleri.trim());
		return (hataMesajları==null)?"":hataMesajları;
		
	}
	public User() {
		this.adi="";
		this.adres="";
		this.cinsiyet="";
		this.email="";
		this.kullaniciadi="";
		this.parola1="";
		this.parola2="";
		this.soyadi="";
		this.postakodu="";
		this.tecrubeleri=new String[] {"1"};
		this.hatalar= new Hashtable<String,String>();
	}
	public String getAdi() {
		return adi;
	}
	public String getSoyadi() {
		return soyadi;
	}
	public String getEmail() {
		return email;
	}
	public String getKullaniciadi() {
		return kullaniciadi;
	}
	public String getCinsiyet() {
		return cinsiyet;
	}
	public String getParola1() {
		return parola1;
	}
	public String getParola2() {
		return parola2;
	}
	public String getPostakodu() {
		return postakodu;
	}
	public String getAdres() {
		return adres;
	}
	public String[] getTecrubeleri() {
		return tecrubeleri;
	}
	public Hashtable<String, String> getHatalar() {
		return hatalar;
	}
	
	

}
