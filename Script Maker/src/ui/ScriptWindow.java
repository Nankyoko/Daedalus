package ui;

import java.awt.Dimension;
import java.awt.GridLayout;
import java.awt.Toolkit;
import java.awt.event.ActionEvent;

import javax.swing.AbstractAction;
import javax.swing.Action;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFileChooser;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;

import bo.ScriptConverter;

@SuppressWarnings("serial")
public class ScriptWindow extends JFrame {
	
	private String lastRead, lastWrite;
	
	public static void main(String[] args) {
		ScriptConverter converter = new ScriptConverter();
		ScriptWindow scriptWindow = new ScriptWindow(converter);
	}
	
	//ScriptConverter is edited out for rn to test the 
	public ScriptWindow(ScriptConverter scriptCon) {
		
		lastRead = "";
		lastWrite = "";
		
		setSize(850,200);
		
		// Center the frame in the middle of the screen
		Dimension screenDim = Toolkit.getDefaultToolkit().getScreenSize();

		setLocation((screenDim.width - getWidth()) / 2, (screenDim.height - getHeight()) / 2);
				
		// Close the system when this frame is closed
		setDefaultCloseOperation(EXIT_ON_CLOSE);
		
		//Define all the labels that will be on the screen so they can be edited by the actions
		JLabel readLabel = new JLabel("Open a file to be read");
		JLabel writeLabel = new JLabel("Select a folder to save to");
		
		//Defines all the actions the window can make
		
		//Opens a file dialog for the user to select a file to be read
		final Action readAction = new AbstractAction("Select script to read", new ImageIcon(
				"images/Open.gif")) {
			public void actionPerformed(ActionEvent e) {
				JFileChooser fileSelect = new JFileChooser(lastRead);
				int select = fileSelect.showOpenDialog(null);
				if(select == JFileChooser.APPROVE_OPTION) {
					String selectedFile = fileSelect.getSelectedFile().getAbsolutePath();
					scriptCon.setReader(selectedFile);
					readLabel.setText(selectedFile);
					lastRead = selectedFile;
				}
			}
		};
		
		//Opens a file dialog for the user to select a file to be written to
		final Action writeAction = new AbstractAction("Select folder to save to", new ImageIcon(
				"images/Open.gif")) {
			public void actionPerformed(ActionEvent e) {
				JFileChooser fileSelect = new JFileChooser(lastWrite);
				fileSelect.setFileSelectionMode(JFileChooser.DIRECTORIES_ONLY);
				int select = fileSelect.showSaveDialog(null);
				if(select == JFileChooser.APPROVE_OPTION) {
					String selectedFile = fileSelect.getSelectedFile().getAbsolutePath() + "\\DaedalusScript" + java.time.LocalDateTime.now() + ".txt";
					scriptCon.setWriter(selectedFile);
					writeLabel.setText(selectedFile);
					lastWrite = selectedFile;
				}
			}
		};
		
		//Clears the reader and writer, and resets the labels, forcing the user to select new files
		final Action closeAction = new AbstractAction("Clear Selected Files", new ImageIcon(
				"images/Undo.gif")) {
			public void actionPerformed(ActionEvent e) {
				readLabel.setText("Open a file to be read");
				writeLabel.setText("Select a folder to save to");
				scriptCon.clearReader();
				scriptCon.clearWriter();
			}
		};
		
		//Initializes script conversion, and resets the labels and reader/writer
		final Action convertAction = new AbstractAction("Convert Script to Code", new ImageIcon(
				"images/filesave.gif")) {
			public void actionPerformed(ActionEvent e) {
				scriptCon.convertScript();
				readLabel.setText("Open a file to be read");
				writeLabel.setText("Select a folder to save to");
				scriptCon.clearReader();
				scriptCon.clearWriter();
			}
		};
		
		//Define all the buttons after the actions, so they can actually find their actions
		JButton readButton = new JButton(readAction);
		JButton writeButton = new JButton(writeAction);
		JButton closeButton = new JButton(closeAction);
		JButton convertButton = new JButton(convertAction);
		setLayout(new GridLayout(3, 2));
		setTitle("Daedalus Script Converter");
		
		add(readLabel);
		add(readButton);
		add(writeLabel);
		add(writeButton);
		add(closeButton);
		add(convertButton);
		setVisible(true);
	}
}
