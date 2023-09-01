package com.espe.pry.models;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import lombok.Data;

@Entity
@Table(name = "doctores")
@Data
public class Doctor {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank
    @Column(name = "nombre")
    private String nombre;

    @NotBlank
    @Column(name = "apellido")
    private String apellido;

    @NotBlank
    @Size(min = 1, max = 10)
    @Column(name = "cedula")
    private String cedula;

    @ManyToOne
    @JoinColumn(name = "especialidad_id")
    private Especialidad especialidad;

}
