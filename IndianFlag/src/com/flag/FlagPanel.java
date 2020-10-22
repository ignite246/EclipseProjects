package com.flag;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.Image;
import java.io.FileInputStream;

import javax.imageio.ImageIO;
import javax.swing.JPanel;

public class FlagPanel extends JPanel {
	private static final long serialVersionUID = 1L;

	@Override
	protected void paintComponent(Graphics g) {
		super.paintComponent(g);
		g.setColor(Color.decode("#FF8F1C"));
		g.drawRect(10, 10, 400, 70);
		g.fillRect(10, 10, 400, 70);
		
		g.setColor(Color.WHITE);
		g.drawRect(10, 80, 400, 70);
		g.fillRect(10, 80, 400, 70);
		
		g.setColor(Color.decode("#509E2F"));
		g.drawRect(10, 150, 400, 70);
		g.fillRect(10, 150, 400, 70);
		
		g.setColor(Color.BLACK);
		g.fillRect(10, 10, 5, 540);
		
		//Setting ashok chakra icon
		
		try {
			Image image = ImageIO.read(new FileInputStream("src/ashok.png"));
			g.drawImage(image,165,80,70,70,null);
			g.setFont(new Font("Lato", Font.BOLD, 25));
			g.setColor(Color.MAGENTA);
			g.drawString("Happy Independence Day !", 20, 400);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
	

}
