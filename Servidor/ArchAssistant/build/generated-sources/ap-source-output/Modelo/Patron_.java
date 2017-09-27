package Modelo;

import Modelo.Atributocalidad;
import Modelo.Controlador;
import Modelo.Tactica;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-09-21T11:57:25")
@StaticMetamodel(Patron.class)
public class Patron_ { 

    public static volatile SingularAttribute<Patron, String> patNombre;
    public static volatile ListAttribute<Patron, Controlador> controladorList;
    public static volatile SingularAttribute<Patron, Integer> patID;
    public static volatile ListAttribute<Patron, Tactica> tacticaList;
    public static volatile SingularAttribute<Patron, String> patDescripcion;
    public static volatile ListAttribute<Patron, Atributocalidad> atributocalidadList;

}