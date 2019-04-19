package my.model;

import javax.persistence.*;

@Entity
@Table(name = "users")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String userName;
    private String userPassword;
    private String userEmail;
   // public boolean valid;
    public User() {
    }



    public void setId(int id) {
        this.id = id;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public int getId() {
        return id;
    }

    public String getUserName() {
        return userName;
    }

    public String getUserPassword() {
        return userPassword;
    }

    public String getUserEmail() {
        return userEmail;
    }

   // public boolean isValid() {
     //   return valid;
    //}

   // public void setValid(boolean newValid) {
     //   valid = newValid;
    //}





    public User( String userName, String userPassword, String userEmail) {

        this.userName = userName;
        this.userPassword = userPassword;
        this.userEmail = userEmail;
    }









}
