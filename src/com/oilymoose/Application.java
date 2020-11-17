package com.oilymoose;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.KeyEvent;

public class Application {
    // JSwing variables
    private JPanel mainPanel;
    private JPanel splashPanel;
    private JPanel contentPanel;
    private JPanel titlePanel;
    private JTextField usernameField;
    private JTextField passwordField;
    private JButton submitButton;
    private JPanel loginPanel;
    private JPanel innerContentPanel;
    private JPanel staffPanel;
    private JPanel participantPanel;
    private JPanel informationPanel;
    private JList list1;
    private JLabel label1;
    private JMenuBar menuBar;

    // Other variables
    public Database database;
    public String ip;
    public int port;
    public String databaseName;
    enum ApplicationCard {
        SPLASH_CARD(0), CONTENT_CARD(1);
        private final int value;
        ApplicationCard(int value) { this.value = value; }
        public int getValue() { return value; }
    }
    String[] cardNames = { "splashCard", "contentCard" };

    // Getters/Setters
    public JPanel getMainPanel() { return mainPanel; }
    public JMenuBar getMenuBar() { return menuBar; }



    // Misc Functions
    public void SetDatabaseLocation(String ip, int port, String name) {
        this.ip = ip;
        this.port = port;
        this.databaseName = name;
    }

    public String Login(String username, String password) {
        try {
            database = new Database(ip, port, databaseName, username, password);
        } catch (Exception e) {
            return e.toString();
        }
        return null;
    }

    public void SubmitCredentials() {
        String error = Login(usernameField.getText(), passwordField.getText());
        if (error == null) {
            JOptionPane.showMessageDialog(null, "Login Successful!");
            SwitchCard(ApplicationCard.CONTENT_CARD);
        } else {
            JOptionPane.showMessageDialog(null, error);
        }
    }

    public void SwitchCard (ApplicationCard card) {
        CardLayout cl = (CardLayout) mainPanel.getLayout();
        cl.show(mainPanel, cardNames[card.getValue()]);
    }

    public void LoadContentPanes() {

    }

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
        // Submit on the submit button or enter in the text fields
        submitButton.addActionListener(e -> SubmitCredentials());
        passwordField.addActionListener(e -> SubmitCredentials());
        usernameField.addActionListener(e -> SubmitCredentials());
    }


}
