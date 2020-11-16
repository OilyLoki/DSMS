package com.oilymoose;

import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Application {
    // JSwing variables
    private JPanel mainPanel;
    private JButton button1;
    private JLabel label1;

    // Other variables
    public Database database;

    public Application() {
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

    public JPanel getMainPanel() {
        return mainPanel;
    }
}
