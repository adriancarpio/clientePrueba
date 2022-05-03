/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ec.cliente.app.negocio;

import com.ec.cliente.app.dt.ClienteDatos;
import java.util.List;

/**
 *
 * @author adria
 */
public class PruebaNegocio {
    
    public String procesar(List<String> parametros) {
        String resp = ClienteDatos.operation(parametros);
        return resp;
    }

}
