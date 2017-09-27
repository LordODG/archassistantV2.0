package Modelo;

import Modelo.Controlador;
import Modelo.Escenario;
import Modelo.Patron;
import Modelo.Tactica;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-09-21T11:57:25")
@StaticMetamodel(Atributocalidad.class)
public class Atributocalidad_ { 

    public static volatile SingularAttribute<Atributocalidad, Integer> acID;
    public static volatile SingularAttribute<Atributocalidad, String> acDescripcion;
    public static volatile ListAttribute<Atributocalidad, Escenario> escenarioList;
    public static volatile ListAttribute<Atributocalidad, Controlador> controladorList;
    public static volatile ListAttribute<Atributocalidad, Patron> patronList;
    public static volatile ListAttribute<Atributocalidad, Tactica> tacticaList;
    public static volatile SingularAttribute<Atributocalidad, String> acNombre;

}