package com.flag;

import javax.swing.JFrame;

public class MyFrame extends JFrame{

	private static final long serialVersionUID = 1L;
	private FlagPanel panel = new FlagPanel();
	public MyFrame() {
		setTitle("Happy Independence Day !!");
		setSize(440,600);
		setLocationRelativeTo(null);
		setDefaultCloseOperation(EXIT_ON_CLOSE);
		add(panel);
		setVisible(true);
	}
	
}
