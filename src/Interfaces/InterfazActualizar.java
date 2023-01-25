package Interfaces;

import DAOs.DAOOperaciones;

import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class InterfazActualizar {
    private JTextField textField1;
    private JTextField textField2;
    private JTextField textField3;
    private JTextField textField4;
    private JPanel panel;
    private JComboBox comboBox1;
    private JComboBox comboBox2;
    private JComboBox comboBox3;
    private JButton actualizarButton;

    public InterfazActualizar(){
        JFrame ventana = new JFrame("Insertar");
        lanzarVentana(ventana);
        actualizarButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                if (DAOOperaciones.comparar(textField3.getText()) == 0){
                    if (JOptionPane.showConfirmDialog(null,"El registro no ha sido creado. ¿Deseas crearlo?") == 1){
                        if (DAOOperaciones.insertar(textField1.getText(),textField2.getText(), textField3.getText(), textField4.getText(),
                                comboBox1.getSelectedIndex() + 1,comboBox2.getSelectedIndex() + 1, comboBox3.getSelectedIndex() + 1) == 1){
                            JOptionPane.showMessageDialog(null, "El registro fue agredado");
                        }
                    }
                }else
                    System.out.println("El usuario ya se encuentra registrado");
            }
        });
    }

    public void lanzarVentana(JFrame ventana){
        ventana.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        ventana.setContentPane(panel);
        ventana.pack();
        ventana.setVisible(true);
        ventana.setSize(900, 700);
        ventana.setLocationRelativeTo(null);
    }
}
