package Modelo;

import Modelo.Atributocalidad;
import Modelo.Patron;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-09-21T11:57:25")
@StaticMetamodel(Tactica.class)
public class Tactica_ { 

    public static volatile SingularAttribute<Tactica, Integer> tacID;
    public static volatile ListAttribute<Tactica, Patron> patronList;
    public static volatile SingularAttribute<Tactica, Atributocalidad> tblatributocalidadacID;
    public static volatile SingularAttribute<Tactica, String> tacDescripcion;
    public static volatile SingularAttribute<Tactica, String> tacNombre;

}