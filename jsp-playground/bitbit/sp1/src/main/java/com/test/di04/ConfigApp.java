package com.test.di04;

import java.util.ArrayList;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class ConfigApp {

	@Bean
	public Player player1(){
		ArrayList<String> position = new ArrayList<String>();
		position.add("4번타자");
		position.add("3루수");
		
		Player player = new Player("추신수", 28, position);
		player.setHeight(187);
		player.setWeight(80);
		
		return player;
	}
}
