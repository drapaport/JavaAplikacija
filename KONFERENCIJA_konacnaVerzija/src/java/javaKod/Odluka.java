
package javaKod;


public class Odluka {
    
    private int idRada;
    private String statusRada;
    private String komentar;
    private Rad rad;

 public Odluka(){}

    /**
     * @return the idRada
     */
    public int getIdRada() {
        return idRada;
    }

    /**
     * @param idRada the idRada to set
     */
    public void setIdRada(int idRada) {
        this.idRada = idRada;
    }

    /**
     * @return the statusRada
     */
    public String getStatusRada() {
        return statusRada;
    }

    /**
     * @param statusRada the statusRada to set
     */
    public void setStatusRada(String statusRada) {
        this.statusRada = statusRada;
    }

    /**
     * @return the komentar
     */
    public String getKomentar() {
        return komentar;
    }

    /**
     * @param komentar the komentar to set
     */
    public void setKomentar(String komentar) {
        this.komentar = komentar;
    }

    /**
     * @return the rad
     */
    public Rad getRad() {
        return rad;
    }

    /**
     * @param rad the rad to set
     */
    public void setRad(Rad rad) {
        this.rad = rad;
    }

}
