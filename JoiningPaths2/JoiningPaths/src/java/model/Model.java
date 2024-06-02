package model;

 

import java.beans.*;

import java.io.Serializable;

 

public class Model implements Serializable {

    private String[] model; // camp ascuns (starea obiectului)

    public Model() {
    
        model = new String[3];
        
        model[0] = "Acesta este traseul intre Bucuresti si Cluj-Napoca...";
        model[1] = "Acesta este traseul intre Bucuresti si Timisoara...";
        model[2] = "Acesta este traseul intre Cluj-Napoca si Timisoara..";
        
        
    }

    public String getModel(int nr_pag) { // metoda accesor - getter

        return model[nr_pag];            // returneaza un element al tabloului

    }

    public void setModel(int nr_pag, String text) { // metoda accesor - setter

        model[nr_pag] = text;                       // inlocuieste un element

    }
    

}
