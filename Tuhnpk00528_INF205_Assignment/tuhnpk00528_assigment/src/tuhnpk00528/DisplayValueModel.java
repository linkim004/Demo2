/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tuhnpk00528;

/**
 *
 * @author Huynh Tu
 */
public class DisplayValueModel {
    Object DisplayMenber;
    Object DisplayValue;
    public DisplayValueModel(Object displayMenber,Object displayValue){
        DisplayMenber = displayMenber;
        DisplayValue = displayValue;
    }
    @Override
    public String toString(){
        return DisplayMenber.toString();
    }
    
}
