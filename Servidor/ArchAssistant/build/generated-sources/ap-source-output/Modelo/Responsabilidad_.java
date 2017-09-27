package Modelo;

import Modelo.Modulo;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-09-21T11:57:25")
@StaticMetamodel(Responsabilidad.class)
public class Responsabilidad_ { 

    public static volatile SingularAttribute<Responsabilidad, Integer> respID;
    public static volatile SingularAttribute<Responsabilidad, String> respNombre;
    public static volatile SingularAttribute<Responsabilidad, String> respOtro;
    public static volatile SingularAttribute<Responsabilidad, Modulo> tblmoduloModId;
    public static volatile SingularAttribute<Responsabilidad, String> respDescripcion;

}