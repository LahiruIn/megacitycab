package model;

public class customer {

    private int c_id;
    private String c_name;
    private String c_nic;
    private int c_phone;
    private String c_address;
    private String c_email;
    private String c_password;

    // ✅ Default Constructor
    public customer() {}

    // ✅ Parameterized Constructor
    public customer(int c_id, String c_name, String c_nic, int c_phone, String c_address, String c_email, String c_password) {
        this.c_id = c_id;
        this.c_name = c_name;
        this.c_nic = c_nic;
        this.c_phone = c_phone;
        this.c_address = c_address;
        this.c_email = c_email;
        this.c_password = c_password;
    }

    // ✅ Getters and Setters
    public int getC_id() {
        return c_id;
    }

    public void setC_id(int c_id) {
        this.c_id = c_id;
    }

    public String getC_name() {
        return c_name;
    }

    public void setC_name(String c_name) {
        this.c_name = c_name;
    }

    public String getC_nic() {
        return c_nic;
    }

    public void setC_nic(String c_nic) {
        this.c_nic = c_nic;
    }

    public int getC_phone() {
        return c_phone;
    }

    public void setC_phone(int c_phone) {
            this.c_phone = c_phone;
    }

    public String getC_address() {
        return c_address;
    }

    public void setC_address(String c_address) {
        this.c_address = c_address;
    }

    public String getC_email() {
        return c_email;
    }

    public void setC_email(String c_email) {
            this.c_email = c_email;
    }

    public String getC_password() {
        return c_password;
    }

    public void setC_password(String c_password) {
            this.c_password = c_password;
    }

    // ✅ toString() method for debugging
    @Override
    public String toString() {
        return "Customer{" +
                "ID=" + c_id +
                ", Name='" + c_name + '\'' +
                ", NIC='" + c_nic + '\'' +
                ", Phone=" + c_phone +
                ", Address='" + c_address + '\'' +
                ", Email='" + c_email + '\'' +
                ", Password=********" +
                '}';
    }
}
