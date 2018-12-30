package entity;

public class Admin {
    String a_email;
    String a_password;

    public Admin(String a_email, String a_password) {
        this.a_email = a_email;
        this.a_password = a_password;
    }

    public Admin() {

    }

    public String getA_email() {
        return a_email;
    }

    public void setA_email(String a_email) {
        this.a_email = a_email;
    }

    public String getA_password() {
        return a_password;
    }

    public void setA_password(String a_password) {
        this.a_password = a_password;
    }
}
