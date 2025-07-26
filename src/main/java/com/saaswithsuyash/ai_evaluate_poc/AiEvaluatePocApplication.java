package com.saaswithsuyash.ai_evaluate_poc;

import io.github.cdimascio.dotenv.Dotenv;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.WebApplicationType;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class AiEvaluatePocApplication {

	public static void main(String[] args) {
		Dotenv.load();

		SpringApplication app = new SpringApplication(AiEvaluatePocApplication.class);
		app.setWebApplicationType(WebApplicationType.NONE);
		app.run(args);
	}
}
