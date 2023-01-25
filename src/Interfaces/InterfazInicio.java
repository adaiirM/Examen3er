package Interfaces;

import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class InterfazInicio {
    private JButton btnInsertar;
    private JButton btnConsultar;
    private JButton btnEliminar;
    private JButton btnActualizar;
    private JPanel panel;

    public InterfazInicio(){
        JFrame ventana = new JFrame("Laboratorio");
        lanzarVentana(ventana);

        btnInsertar.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                ventana.dispose();
                new InterfazInsertar();
            }
        });
        btnConsultar.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                ventana.dispose();
                new InterfazConsultar();
            }
        });
        btnEliminar.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                new InterfazEliminar();
            }
        });

        btnActualizar.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                new InterfazActualizar();
            }
        });

    }
    public void lanzarVentana(JFrame ventana){
        ventana.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        ventana.setContentPane(panel);
        ventana.pack();
        ventana.setVisible(true);
        ventana.setSize(500, 700);
        ventana.setLocationRelativeTo(null);
    }

}
