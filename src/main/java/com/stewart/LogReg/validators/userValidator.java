package com.stewart.LogReg.validators;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;
import com.stewart.LoginReg.models.User;

@Component
public class userValidator implements Validator{
	
	@Override
    public boolean supports(Class<?> clazz) {
        return User.class.equals(clazz);
    }
    
    // 2
    @Override
    public void validate(Object target, Errors errors) {
        User user = (User) target;
        if(!user.getPassword().equals(user.getConfirm())) {
        	errors.rejectValue("password", "Match");
        }
    }
}
