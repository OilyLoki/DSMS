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

        // JFrame creation/settings
        JFrame frame = new JFrame("DSMS");
        frame.setContentPane(app.getMainPanel());
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.pack();
        frame.setVisible(true);
        //frame.setSize(900, 500);
        frame.setLocation(200, 200);
    }
}