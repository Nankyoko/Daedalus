package io;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Iterator;
import java.util.LinkedList;

import javax.swing.JOptionPane;

import bo.ScriptList;

public class ScriptWriter {
	
	private BufferedWriter writer;
	
	public ScriptWriter(String filename) {
		try {
			writer = new BufferedWriter(new FileWriter(filename));
		} catch (IOException e) {
			JOptionPane.showMessageDialog(null, "Error opening file to write\n" + filename);
			e.printStackTrace();
		}
	}
	
	public void writeText(ScriptList list) {
		Iterator<String[]> iter = list.iterator();
		String firstChar = list.getLine(0)[0];
		String firstFace = list.getLine(0)[1];
		try {
			
			writer.write("Copy this to the create section of the dialog object in Game Maker 2\n\n");
			
			while(iter.hasNext()) {
				writer.write("ds_list_add(script, \"" + iter.next()[2] + "\");\n");	
			}
			
			writer.write("\ncurrentSprite = \"" + firstChar + "\", \"" + firstFace + "\");");
			
		} catch (IOException e) {
			JOptionPane.showMessageDialog(null, "Error writing lines");
		}
	}
	
	public void writeSpriteSwitch(ScriptList list) {
		Iterator<String[]> iter = list.iterator();
		String[] line;
		String[] characterLine = new String[2];
		
		//Populates 2 parallel linked lists
		//This is a really obscure data structure and if you're looking for notes on it, they're on the back of Floren and Aradicia's character sheets,
		//You'll probably have to talk to Jeromy to get them, <3
		LinkedList<String[]> character = new LinkedList<String[]>(); 
		LinkedList<LinkedList<Integer>> spriteLocation = new LinkedList<LinkedList<Integer>>();
		int i = 0;
		boolean wasFound = false;
		
		while(iter.hasNext()) {
			line = iter.next();
			characterLine[0] = line[0];
			characterLine[1] = line[1];
			
			//Search the current sprite list for a matching sprite
			for(int j = 0; j<character.size(); j++) {
				if(character.get(j)[0].equals(characterLine[0]) && character.get(j)[1].equals(characterLine[1])) {
					spriteLocation.get(j).add(i);
					wasFound = true;
					break;
				}
			}
			
			//If it was not found in the list already, add it
			if(!wasFound) {
				LinkedList<Integer> newList = new LinkedList<Integer>();
				newList.add(i);
				character.add(characterLine);
				spriteLocation.add(newList);
				wasFound = false;
			}
		}
		
		
		//Converts the 2 lists into a bunch of Game Maker Studio 2 code
		String[] orStatementSwitch = new String[character.size()];
		Iterator<String[]> writeIter = character.iterator();
		int k = 0;
		while(writeIter.hasNext()) {
			
		}
	}
	
	public void close() {
		try {
			writer.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
