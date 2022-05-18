package ch.bbzw.m306.websho.data;

import java.io.Serializable;
import java.util.Objects;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "Mitarbeiter")
public class Mitarbeiter { 

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private Long id;

    @Column(name = "Loeschberechtigt")
    private boolean loeschberechtigt;

    @Column(name = "Schreibberechtigt")
    private boolean schreibberechtigt;
    
    @ManyToOne(fetch = FetchType.LAZY)
    private Person person; 
}
