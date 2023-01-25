package spring.crud.exceptionhandler;

import org.springframework.http.HttpStatus;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
@ControllerAdvice
public class MyExceptionHandler {
	@ResponseStatus(value=HttpStatus.INTERNAL_SERVER_ERROR)   //it will send error to error section which can further be used in Rest API
	@ExceptionHandler(/*{NullPointerException.class,NumberFormatException.class}*/ value=NullPointerException.class)
	public String exceptionhandler(Model m) {
		System.out.println("Null error");
		m.addAttribute("msg", "Null Pointer Exception has been occured");
		return "nullpage";
	}
	@ResponseStatus(value=HttpStatus.INTERNAL_SERVER_ERROR)
	@ExceptionHandler(value=NumberFormatException.class)
	public String exceptionhandlernf(Model m) {
		System.out.println("Number Format error");
		m.addAttribute("msg", "Number Format Exception has been occured");
		return "nullpage";
	}
	//Generic Exception it will handle every exception
	@ResponseStatus(value=HttpStatus.INTERNAL_SERVER_ERROR)
	@ExceptionHandler(value=Exception.class)
	public String exceptionhandlerGeneric(Model m) {
		System.out.println("Generic error");
		m.addAttribute("msg", "Generic Exception has been occured");
		return "nullpage";
	}
}
