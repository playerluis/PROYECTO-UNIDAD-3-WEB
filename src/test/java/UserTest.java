import com.espe.pry.models.Usuario;
import org.junit.jupiter.api.Test;

public class UserTest {
    @Test
    public void test() {
        System.out.println("Hello World");

        Usuario usuario = new Usuario();
        usuario.setNombre("sdaasd");
        usuario.setApellido("asdasPerez");
        usuario.setEmail("lkkasdaska@asd.com");
        usuario.setPassword("12345789");

    }
}
