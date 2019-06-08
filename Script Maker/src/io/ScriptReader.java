package io;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.LinkedList;

import javax.swing.JOptionPane;

/**
 * Reads Scripts for the Daedalus game, prepping them to be converted into Game Maker Studio 2 code
 * @author Cole Bowman
 */
public class ScriptReader {
	private BufferedReader reader;
	
	/**
	 * Reads files with the format Character:Face:Dialog and converts them into a linked list of arrays to be converted into Game Maker Studio 2 code
	 * @param filename The file to be read, hopefully passed in by GUI if I can remember how to do that
	 */
	public ScriptReader(String filename) {
		try {
			reader = new BufferedReader(new FileReader(filename));
		} catch (FileNotFoundException e) {
			JOptionPane.showMessageDialog(null, "File was not found, please give another file");
		}
	}
	
	public void close() {
		try {
			reader.close();
		} catch (IOException e) {
			JOptionPane.showMessageDialog(null, "Error closing file");
		}
	}
	
	/**
	 * Reads in the script file in the format
	 * CharacterFaceDialog
	 * @return a linked list of all the divided up strings [Character][Face][Dialog]
	 */
	public LinkedList<String[]> readScript() {
		LinkedList<String[]> script = new LinkedList<String[]>();
		String[] line = new String[3];
		String[] raw;
		try {
			while(reader.ready()) {
				raw = reader.readLine().split(":");
				line[0] = raw[0];
				line[1] = raw[1];
				line[2] = raw[2];
				
				//This is a fall through in case Jeromy puts a ":" anywhere in a line of dialog, so it doesn't split there and eliminate anything after that
				if(raw.length>3) {
					for(int i = 3; i<raw.length; i++) {
						line[2] += ":" + raw[i];
					}
				}
				script.add(line);
			}
			reader.close();
		} catch (IOException e) {
			JOptionPane.showMessageDialog(null, "File was not read correctly, please ensure it is in the correct format");
		}
		return script;
	}
}
