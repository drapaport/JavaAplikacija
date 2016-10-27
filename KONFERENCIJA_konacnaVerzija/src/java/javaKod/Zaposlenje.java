
package javaKod;


public class Zaposlenje  {
    
    private int idAutora;
    private String imeInstitucije;
    private String grad;
    private String drzava;
    private String pozicija;
    private Autor autor;

    
   public Zaposlenje()
             {
        
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
     * @return the imeInstitucije
     */
    public String getImeInstitucije() {
        return imeInstitucije;
    }

    /**
     * @param imeInstitucije the imeInstitucije to set
     */
    public void setImeInstitucije(String imeInstitucije) {
        this.imeInstitucije = imeInstitucije;
    }

    /**
     * @return the grad
     */
    public String getGrad() {
        return grad;
    }

    /**
     * @param grad the grad to set
     */
    public void setGrad(String grad) {
        this.grad = grad;
    }

    /**
     * @return the drzava
     */
    public String getDrzava() {
        return drzava;
    }

    /**
     * @param drzava the drzava to set
     */
    public void setDrzava(String drzava) {
        this.drzava = drzava;
    }

    /**
     * @return the pozicija
     */
    public String getPozicija() {
        return pozicija;
    }

    /**
     * @param pozicija the pozicija to set
     */
    public void setPozicija(String pozicija) {
        this.pozicija = pozicija;
    }

    /**
     * @return the autor
     */
    public Autor getAutor() {
        return autor;
    }

    /**
     * @param autor the autor to set
     */
    public void setAutor(Autor autor) {
        this.autor = autor;
    }
   
   
   
   
   
} 
 