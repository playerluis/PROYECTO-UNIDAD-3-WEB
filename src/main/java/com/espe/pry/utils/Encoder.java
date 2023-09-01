package com.espe.pry.utils;


import org.mindrot.jbcrypt.BCrypt;

/**
 * Utilidad para codificar y verificar contraseñas utilizando el algoritmo de hash Argon2.
 */
public final class Encoder {

    private Encoder() {
        throw new AssertionError("No ec.edu.espe.pms.utils.Encoder instances for you!");
    }

    public static String encode(String text) {
        String salt = BCrypt.gensalt(12);
        return BCrypt.hashpw(text, salt);
    }


    public static Boolean verify(String hash, String text) {
        return BCrypt.checkpw(text, hash);
    }
}
