/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.joshuaoliva.sessionbeans;

import com.joshuaoliva.entities.Detallefacturacion;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author programacion
 */
@Stateless
public class DetallefacturacionFacade extends AbstractFacade<Detallefacturacion> implements DetallefacturacionFacadeLocal {

    @PersistenceContext(unitName = "WebEventos_IN5BV_2014297PU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public DetallefacturacionFacade() {
        super(Detallefacturacion.class);
    }
    
}
