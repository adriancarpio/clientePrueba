/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ec.cliente.app.dt;

/**
 *
 * @author adria
 */
public class ClienteDatos {

    public static String operation(java.util.List<java.lang.String> dtoImput) {
        com.prueba.controler.Wsprueba service = new com.prueba.controler.Wsprueba();
        com.prueba.controler.Webservice port = service.getWebservicePort();
        return port.operation(dtoImput);
    }
    
    
    
}
