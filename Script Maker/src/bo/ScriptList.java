package bo;

import java.util.Iterator;
import java.util.LinkedList;

public class ScriptList {
	private LinkedList<String[]> script;
	
	public ScriptList() {
		script = new LinkedList<String[]>();
	}
	
	public void addLine(String[] line) {
		script.add(line);
	}
	
	public String[] getLine(int i) {
		return script.get(i);
	}
	
	public int size() {
		return script.size();
	}

	public Iterator<String[]> iterator() {
		return script.iterator();
	}
	
}
