package com.oilymoose;

import javax.swing.*;

class Main {
    public static void main(String[] args) throws InterruptedException {

        // Creating application instance
        Application app = new Application();
        app.SetDatabaseLocation("192.168.0.169", 3306, "test_database");

        // TESTING ONLY
        app.Login("developer", "admin");
        app.SwitchCard(Application.ApplicationCard.CONTENT_CARD);
        // -------------

        // JFrame creation/settings
        JFrame frame = new JFrame("DSMS");
        frame.setContentPane(app.getMainPanel());
        frame.setJMenuBar(app.getMenuBar());
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.pack();
        frame.setVisible(true);
        frame.setSize(800, 600);
        frame.setLocation(560, 240);
    }
}