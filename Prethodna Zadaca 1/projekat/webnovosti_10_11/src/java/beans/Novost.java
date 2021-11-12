/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import java.util.ArrayList;
import java.util.Collections;

/**
 *
 * @author User
 */
public class Novost {

    public Integer id;
    public String naslov;
    public String opis;
    public String slika;
    public String sadrzaj;
    public String novostCol;
    ArrayList<Komentar> komentari = new ArrayList<>();

    public Novost() {

    }

    public Integer getId() {
        return id;
    }
    
    public void reverseArrayList(){
        Collections.reverse(this.komentari);
    }
    public ArrayList<Komentar> getKomentari() {
        return komentari;
    }
    public void addComment(Komentar k){
        this.komentari.add(k);
    }
    public void setKomentari(ArrayList<Komentar> komentari) {
        this.komentari = komentari;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNaslov() {
        return naslov;
    }

    public void setNaslov(String naslov) {
        this.naslov = naslov;
    }

    public String getOpis() {
        return opis;
    }

    public void setOpis(String opis) {
        this.opis = opis;
    }

    public String getSlika() {
        return slika;
    }

    public void setSlika(String slika) {
        this.slika = slika;
    }

    public String getSadrzaj() {
        return sadrzaj;
    }

    public void setSadrzaj(String sadrzaj) {
        this.sadrzaj = sadrzaj;
    }

    public String getNovostCol() {
        return novostCol;
    }

    public void setNovostCol(String novostCol) {
        this.novostCol = novostCol;
    }

}
