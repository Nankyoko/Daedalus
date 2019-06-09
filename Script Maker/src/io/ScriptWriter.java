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
			
			writer.write("Copy this to the create section of the dialog object in Game Maker 2");
			writer.newLine();
			writer.newLine();
			
			while(iter.hasNext()) {
				writer.write("ds_list_add(script, \"" + iter.next()[2] + "\");");
				writer.newLine();
			}
			
			writer.newLine();
			writer.write("currentSprite = \"" + firstChar + "\";");
			writer.newLine();
			writer.write("currentFace = \"" + firstFace + "\";");
			writer.newLine();
			writer.newLine();
			writer.write("Copy this section to the space bar event in the dialog object");
			writer.newLine();
			writer.newLine();
			
		} catch (IOException e) {
			JOptionPane.showMessageDialog(null, "Error writing lines");
		}
	}
	
	public void writeSpriteSwitch(ScriptList list) {
		Iterator<String[]> iter = list.iterator();
		
		//Populates 2 parallel linked lists
		//This is a really obscure data structure and if you're looking for notes on it, they're on the back of Floren and Aradicia's character sheets,
		//You'll probably have to talk to Jeromy to get them, <3
		LinkedList<String[]> character = new LinkedList<String[]>(); 
		LinkedList<LinkedList<Integer>> spriteLocation = new LinkedList<LinkedList<Integer>>();
		int i = 0;
		boolean wasFound = false;
		
		while(iter.hasNext()) {
			String[] line;
			String[] characterLine = new String[2];
			line = iter.next();
			characterLine[0] = line[0];
			characterLine[1] = line[1];
			
			//Search the current sprite list for a matching sprite
			//This forces the Character and Face to be the same otherwise no match
			for(int j = 0; j<character.size(); j++) {
				if(character.get(j)[0].equals(characterLine[0]) && character.get(j)[1].equals(characterLine[1])) {
					spriteLocation.get(j).add(i++);
					wasFound = true;
					break;
				}
			}
			
			//If it was not found in the list already, add it
			if(!wasFound) {
				LinkedList<Integer> newList = new LinkedList<Integer>();
				newList.add(i++);
				character.add(characterLine);
				spriteLocation.add(newList);
			}
			
			wasFound = false;
		}
		
		
		//Converts the 2 lists into a bunch of Game Maker Studio 2 code
		Iterator<String[]> writeIter = character.iterator();
		int k = 0;
		String[] nameFace;
		
		//Loops over every character/face combo in the script
		while(writeIter.hasNext()) {
			LinkedList<Integer> row;
			try {
				//Some variables for optimization, limiting the number of times that link lists have to be searched
				nameFace = writeIter.next();
				row = spriteLocation.get(k++);

				//Actually write the code
				writer.write("if(");
				for(int l = 0; l < row.size(); l++) {
					if(l == 0) {
						writer.write("position = " + row.get(l));
					} else {
						writer.write(" || position = " + row.get(l));
					}
				}
				writer.write(") {");
				writer.newLine();
				writer.write("    currentSprite = \"" + nameFace[0] + "\";");
				writer.newLine();
				writer.write("    currentFace = \"" + nameFace[1] + "\";");
				writer.newLine();
				writer.write("}");
			} catch (IOException e) {
				JOptionPane.showMessageDialog(null, "Error writing to file");
				e.printStackTrace();
			}
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
