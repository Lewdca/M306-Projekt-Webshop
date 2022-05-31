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

@Entity
@Table(name = "Employee")
public class Employee { 

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private Long id;

    @Column(name = "DeletePermission")
    private boolean deletePermission;

    @Column(name = "WritePermission")
    private boolean writePermission;
    
    @ManyToOne(fetch = FetchType.LAZY)
    private Person fkPerson; 
}
