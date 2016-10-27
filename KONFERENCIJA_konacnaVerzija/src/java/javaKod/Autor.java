package javaKod;

import java.util.Set;

public class Autor {

    private int idAutora;
    private String imeAutora;
    private String prezimeAutora;
    private String email;
    private String lozinka;
    private String JMBG;
    private String brojTelefona;
    private Set<Rad> radovi;
    private Zaposlenje zaposlenjeInfo;

    public Autor() {

    }

    /**
     * @return the idAutora
     */
    public int getIdAutora() {
        return idAutora;
    }

    /**
     * @param idAutora the idAutora to set
     */
    public void setIdAutora(int idAutora) {
        this.idAutora = idAutora;
    }

    /**
     * @return the imeAutora
     */
    public String getImeAutora() {
        return imeAutora;
    }

    /**
     * @param imeAutora the imeAutora to set
     */
    public void setImeAutora(String imeAutora) {
        this.imeAutora = imeAutora;
    }

    /**
     * @return the prezimeAutora
     */
    public String getPrezimeAutora() {
        return prezimeAutora;
    }

    /**
     * @param prezimeAutora the prezimeAutora to set
     */
    public void setPrezimeAutora(String prezimeAutora) {
        this.prezimeAutora = prezimeAutora;
    }

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return the lozinka
     */
    public String getLozinka() {
        return lozinka;
    }

    /**
     * @param lozinka the lozinka to set
     */
    public void setLozinka(String lozinka) {
        this.lozinka = lozinka;
    }

    /**
     * @return the JMBG
     */
    public String getJMBG() {
        return JMBG;
    }

    /**
     * @param JMBG the JMBG to set
     */
    public void setJMBG(String JMBG) {
        this.JMBG = JMBG;
    }

    /**
     * @return the brojTelefona
     */
    public String getBrojTelefona() {
        return brojTelefona;
    }

    /**
     * @param brojTelefona the brojTelefona to set
     */
    public void setBrojTelefona(String brojTelefona) {
        this.brojTelefona = brojTelefona;
    }

    /**
     * @return the radovi
     */
    public Set<Rad> getRadovi() {
        return radovi;
    }

    /**
     * @param radovi the radovi to set
     */
    public void setRadovi(Set<Rad> radovi) {
        this.radovi = radovi;
    }

    /**
     * @return the zaposlenjeInfo
     */
    public Zaposlenje getZaposlenjeInfo() {
        return zaposlenjeInfo;
    }

    /**
     * @param zaposlenjeInfo the zaposlenjeInfo to set
     */
    public void setZaposlenjeInfo(Zaposlenje zaposlenjeInfo) {
        this.zaposlenjeInfo = zaposlenjeInfo;
    }

}
