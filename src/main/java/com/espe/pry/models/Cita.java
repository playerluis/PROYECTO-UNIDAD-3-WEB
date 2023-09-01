package com.espe.pry.models;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import lombok.Data;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;

@Entity
@Table(name = "citas")
@Data
public class Cita {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotNull
    @Column(name = "descripcion")
    private String descripcion;

    @NotNull
    @Temporal(TemporalType.DATE)
    @Column(name = "fecha")
    private LocalDate fecha;

    @NotNull
    @Temporal(TemporalType.TIME)
    @Column(name = "hora_de_inicio")
    private LocalTime horaDeInicio;

    @NotNull
    @Column(name = "duracion")
    private Integer duracion;

    @ManyToOne
    @JoinColumn(name = "doctor_id")
    private Doctor doctor;

    @ManyToOne
    @JoinColumn(name = "paciente_id")
    private Paciente paciente;

}
