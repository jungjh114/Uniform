package com.project.uniform.dto;

import javax.mail.Authenticator;

import javax.mail.PasswordAuthentication;

public class SMTPAuthenticator extends Authenticator {

	@Override

	protected PasswordAuthentication getPasswordAuthentication() {

		return new PasswordAuthentication("leejw2561@gmail.com", "c4iuser3#");

	}

}
