package com.oilymoose;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.KeyEvent;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Application {
    // JSwing variables
    private JPanel mainPanel;
    private JButton button1;
    private JLabel label1;
    private JMenuBar menuBar;

    // Other variables
    public Database database;

    // Getters/Setters
    public JPanel getMainPanel() { return mainPanel; }
    public JMenuBar getMenuBar() { return menuBar; }


    public Application() {
        // Menu Bar Configuration
        menuBar = new JMenuBar();

        JMenu fileMenu = new JMenu("File");
        JMenu editMenu = new JMenu("Edit");
        JMenu viewMenu = new JMenu("View");
        JMenu userMenu = new JMenu("User");

        JMenuItem exitItem = new JMenuItem("Exit", KeyEvent.VK_E);
        exitItem.setToolTipText("Exit Application");
        exitItem.addActionListener((event) -> System.exit(0));

        fileMenu.add(exitItem);

        menuBar.add(fileMenu);
        menuBar.add(editMenu);
        menuBar.add(viewMenu);
        menuBar.add(userMenu);


        // Listeners
        button1.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                ResultSet rs = database.queryDatabase("SELECT * FROM Staff");
                try {
                    String output = "";
                    rs.next();
                    for (int i = 1; i < rs.getMetaData().getColumnCount(); i++) {
                        output += rs.getString(i) + ", ";
                    }
                    label1.setText(output);
                } catch (SQLException throwable) {
                    throwable.printStackTrace();
                }
            }
        });
    }


}
