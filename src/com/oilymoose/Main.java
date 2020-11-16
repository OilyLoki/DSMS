package com.oilymoose;

import javax.swing.*;

class Main {
    public static void main(String[] args) throws InterruptedException {
        // Setting look and feel
        /*
        try {
            for (UIManager.LookAndFeelInfo info : UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (UnsupportedLookAndFeelException | InstantiationException | ClassNotFoundException | IllegalAccessException ignored) {
        }*/

        Application app = new Application();    // New application instance
        app.database = new Database("192.168.0.169", 3306, "test_database", "developer", "admin");

        // JFrame creation/settings
        JFrame frame = new JFrame("DSMS");
        frame.setContentPane(app.getMainPanel());
        frame.setJMenuBar(app.getMenuBar());
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.pack();
        frame.setVisible(true);
        frame.setSize(500, 200);
        frame.setLocation(200, 200);

    }
}