package Modelo;

import Modelo.Escenario;
import Modelo.Modulo;
import Modelo.Rationaleadd;
import Modelo.Rationaleqaw;
import Modelo.Usuario;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-09-21T11:57:25")
@StaticMetamodel(Proyecto.class)
public class Proyecto_ { 

    public static volatile SingularAttribute<Proyecto, String> proAvance;
    public static volatile SingularAttribute<Proyecto, String> proNombre;
    public static volatile ListAttribute<Proyecto, Escenario> escenarioList;
    public static volatile SingularAttribute<Proyecto, Integer> proID;
    public static volatile ListAttribute<Proyecto, Rationaleadd> rationaleaddList;
    public static volatile SingularAttribute<Proyecto, Usuario> tblUsuarioidUsuario;
    public static volatile SingularAttribute<Proyecto, String> proDescripcion;
    public static volatile ListAttribute<Proyecto, Modulo> moduloList;
    public static volatile ListAttribute<Proyecto, Rationaleqaw> rationaleqawList;

}