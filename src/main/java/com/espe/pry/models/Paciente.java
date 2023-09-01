package com.espe.pry.models;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.Data;

import java.time.LocalDate;
import java.time.LocalDateTime;

@Entity
@Table(name = "pacientes")
@Data
public class Paciente {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank
    @Column(name = "nombre")
    private String nombre;

    @NotBlank
    @Column(name = "apellido")
    private String apellido;

    @NotNull
    @Temporal(TemporalType.DATE)
    @Column(name = "fecha_de_nacimiento")
    private LocalDate fechaDeNacimiento;

    @NotBlank
    @Column(name = "direccion")
    private String direccion;

    @NotNull
    @Column(name = "fecha_de_registro")
    private LocalDateTime fechaDeRegistro;

    @PrePersist
    public void prePersist() {
        fechaDeRegistro = LocalDateTime.now();
    }
}
