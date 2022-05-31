package ch.bbzw.m306.Webshop.data;

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
@Table(name = "Product")
public class Product {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private Long id;

    @Column(name = "Name")
    private String name;

    @Column(name = "Description")
    private String description;

    @Column(name = "Price")
    private float price;

    @Column(name = "Created")
    private Date created;

    @Column(name = "CreatedFrom")
    private int createdFrom;

    @Column(name = "Modified")
    private Date modified;
    
    @Column(name = "ModifiedFrom")
    private int modifiedFrom;


    @Column(name = "FkManufacturer")
    private Manufacturer fkManufacturer;

    @Column(name = "FKCategorie")
    private Categorie fkCategorie;
    
}
