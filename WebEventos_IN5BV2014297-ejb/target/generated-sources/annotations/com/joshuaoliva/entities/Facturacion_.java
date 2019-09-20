package com.joshuaoliva.entities;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2019-09-20T15:52:25")
@StaticMetamodel(Facturacion.class)
public class Facturacion_ { 

    public static volatile SingularAttribute<Facturacion, String> descripcion;
    public static volatile SingularAttribute<Facturacion, Long> total;
    public static volatile SingularAttribute<Facturacion, Date> nombrefactura;
    public static volatile SingularAttribute<Facturacion, Integer> idfacturacion;
    public static volatile SingularAttribute<Facturacion, Integer> productosIdproductos;
    public static volatile SingularAttribute<Facturacion, Integer> cotizacionIdcotizacion;

}