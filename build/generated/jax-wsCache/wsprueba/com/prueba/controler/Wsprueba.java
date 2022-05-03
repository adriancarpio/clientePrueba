
package com.prueba.controler;

import java.net.MalformedURLException;
import java.net.URL;
import javax.xml.namespace.QName;
import javax.xml.ws.Service;
import javax.xml.ws.WebEndpoint;
import javax.xml.ws.WebServiceClient;
import javax.xml.ws.WebServiceException;
import javax.xml.ws.WebServiceFeature;


/**
 * This class was generated by the JAX-WS RI.
 * JAX-WS RI 2.2.11-b150120.1832
 * Generated source version: 2.2
 * 
 */
@WebServiceClient(name = "wsprueba", targetNamespace = "http://controler.prueba.com/", wsdlLocation = "http://localhost:8080/Web-Service-APP/wsprueba?WSDL")
public class Wsprueba
    extends Service
{

    private final static URL WSPRUEBA_WSDL_LOCATION;
    private final static WebServiceException WSPRUEBA_EXCEPTION;
    private final static QName WSPRUEBA_QNAME = new QName("http://controler.prueba.com/", "wsprueba");

    static {
        URL url = null;
        WebServiceException e = null;
        try {
            url = new URL("http://localhost:8080/Web-Service-APP/wsprueba?WSDL");
        } catch (MalformedURLException ex) {
            e = new WebServiceException(ex);
        }
        WSPRUEBA_WSDL_LOCATION = url;
        WSPRUEBA_EXCEPTION = e;
    }

    public Wsprueba() {
        super(__getWsdlLocation(), WSPRUEBA_QNAME);
    }

    public Wsprueba(WebServiceFeature... features) {
        super(__getWsdlLocation(), WSPRUEBA_QNAME, features);
    }

    public Wsprueba(URL wsdlLocation) {
        super(wsdlLocation, WSPRUEBA_QNAME);
    }

    public Wsprueba(URL wsdlLocation, WebServiceFeature... features) {
        super(wsdlLocation, WSPRUEBA_QNAME, features);
    }

    public Wsprueba(URL wsdlLocation, QName serviceName) {
        super(wsdlLocation, serviceName);
    }

    public Wsprueba(URL wsdlLocation, QName serviceName, WebServiceFeature... features) {
        super(wsdlLocation, serviceName, features);
    }

    /**
     * 
     * @return
     *     returns Webservice
     */
    @WebEndpoint(name = "webservicePort")
    public Webservice getWebservicePort() {
        return super.getPort(new QName("http://controler.prueba.com/", "webservicePort"), Webservice.class);
    }

    /**
     * 
     * @param features
     *     A list of {@link javax.xml.ws.WebServiceFeature} to configure on the proxy.  Supported features not in the <code>features</code> parameter will have their default values.
     * @return
     *     returns Webservice
     */
    @WebEndpoint(name = "webservicePort")
    public Webservice getWebservicePort(WebServiceFeature... features) {
        return super.getPort(new QName("http://controler.prueba.com/", "webservicePort"), Webservice.class, features);
    }

    private static URL __getWsdlLocation() {
        if (WSPRUEBA_EXCEPTION!= null) {
            throw WSPRUEBA_EXCEPTION;
        }
        return WSPRUEBA_WSDL_LOCATION;
    }

}