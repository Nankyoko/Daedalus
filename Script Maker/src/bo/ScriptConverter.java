package bo;

import java.util.LinkedList;

import javax.swing.JOptionPane;

import io.*;

public class ScriptConverter {
	private ScriptReader reader;
	private ScriptWriter writer;
	private boolean readerSet, writerSet;
	
	private LinkedList<String[]> script;
	
	public ScriptConverter() {
		readerSet = false;
		writerSet = false;
	}
	
	public void setReader(String filename) {
		reader = new ScriptReader(filename);
		readerSet = true;
	}
	
	public void setWriter(String filename) {
		writer = new ScriptWriter(filename);
		writerSet = true;
	}
	
	public void clearReader() {
		reader.close();
		readerSet = false;
	}
	
	public void clearWriter() {
		writer.close();
		writerSet = false;
	}
	
	public void convertScript() {
		if(readerSet && writerSet) {
			script = reader.readScript();
			String firstChar = script.get(0)[0];
			
		} else {
			JOptionPane.showMessageDialog(null, "You have to set both files before converting");
		}
	}
}
