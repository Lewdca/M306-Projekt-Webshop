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
import java.util.Date;

@Entity
@Table(name = "Produkt")
public class Produkt {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private Long id;

    @Column(name = "Name")
    private String name;

    @Column(name = "Beschrieb")
    private String beschrieb;

    @Column(name = "Created")
    private Date created;

    @Column(name = "CreatedFrom")
    private int createdFrom;

    @Column(name = "Modified")
    private Date modified;
    
    @Column(name = "ModifiedFrom")
    private int modifiedFrom;
    
}
