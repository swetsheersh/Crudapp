package spring.crud.controller;

import java.util.Properties;

import org.python.util.PythonInterpreter;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class pythoncontroller {
	@RequestMapping("/check")
	public String check() {
		PythonInterpreter interpreter = null;
	       Properties p = new Properties();
	            p.setProperty("python.home", "C:\\jython2.7.3\'jython.jar");
	            PythonInterpreter.initialize(System.getProperties(), p, new String[] {});
	        interpreter = new PythonInterpreter();
	    
		//PythonInterpreter pyInterp = new PythonInterpreter();
	    interpreter.exec("print('Hello Python World!')");
		return "";
	}
}
