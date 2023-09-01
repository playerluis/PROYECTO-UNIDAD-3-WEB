package com.espe.pry.models;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import lombok.Data;

import java.time.LocalDateTime;

@Entity
@Table(name = "citas")
@Data
public class Cita  {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "fecha_y_hora_de_inicio")
    private LocalDateTime fechaYHoraDeInicio;

    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "fecha_y_hora_de_fin")
    private LocalDateTime fechaYHoraDeFin;

    @ManyToOne
    @JoinColumn(name = "doctor_id")
    private Doctor doctor;

    @ManyToOne
    @JoinColumn(name = "paciente_id")
    private Paciente paciente;

}
