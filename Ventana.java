import javax.swing.JOptionPane;

public class Ventana {

    public static void main(String[] args) {

        String mensaje = args[0];

        JOptionPane.showMessageDialog(
            null,
            mensaje,
            "Elixir + Java",
            JOptionPane.INFORMATION_MESSAGE
        );
    }
}   