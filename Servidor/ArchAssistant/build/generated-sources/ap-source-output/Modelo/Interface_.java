package Modelo;

import Modelo.Modulo;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-09-21T11:57:25")
@StaticMetamodel(Interface.class)
public class Interface_ { 

    public static volatile SingularAttribute<Interface, Integer> intId;
    public static volatile SingularAttribute<Interface, String> intDescripcion;
    public static volatile SingularAttribute<Interface, Modulo> tblModuloModId;
    public static volatile SingularAttribute<Interface, String> intNombre;
    public static volatile SingularAttribute<Interface, String> intTipo;

}