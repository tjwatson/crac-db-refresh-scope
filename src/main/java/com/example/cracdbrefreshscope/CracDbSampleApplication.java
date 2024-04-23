package com.example.cracdbrefreshscope;

import com.example.cracdbrefreshscope.entities.User;
import com.example.cracdbrefreshscope.repositories.UserRepository;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

@SpringBootApplication
public class CracDbSampleApplication {

	public static void main(String[] args) {
		SpringApplication.run(CracDbSampleApplication.class, args);
	}

	@Value("${example.app.create.users:true}")
	private boolean createUsers=false;

	@Bean
	public CommandLineRunner run(UserRepository userRepository) {
		return (String[] args) -> {
			if (!createUsers) {
				System.out.println("Not creating users.");
				return;
			}
			User user1 = new User("John", "john@domain.com");
			User user2 = new User("Julie", "julie@domain.com");
			userRepository.save(user1);
			userRepository.save(user2);
			userRepository.findAll().forEach(System.out::println);
		};
	}

}
