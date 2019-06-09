package bo;

import javax.swing.JOptionPane;

import io.*;

public class ScriptConverter {
	private ScriptReader reader;
	private ScriptWriter writer;
	private boolean readerSet, writerSet;
	
	private ScriptList script;
	
	public ScriptConverter() {
		readerSet = false;
		writerSet = false;
		script = new ScriptList();
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
	
	public ScriptList getScript() {
		return script;
	}
	
	public void convertScript() {
		if(readerSet && writerSet) {
			reader.readScript(script);
			writer.writeText(script);
			writer.writeSpriteSwitch(script);
			JOptionPane.showMessageDialog(null, "Script successfully converted!");
		} else {
			JOptionPane.showMessageDialog(null, "You have to set both files before converting");
		}
	}
}
