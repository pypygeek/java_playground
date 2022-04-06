package application;
	
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javafx.animation.AnimationTimer;
import javafx.application.Application;
import javafx.stage.Stage;
import javafx.scene.Scene;
import javafx.scene.canvas.Canvas;
import javafx.scene.canvas.GraphicsContext;
import javafx.scene.input.KeyCode;
import javafx.scene.input.KeyEvent;
import javafx.scene.layout.VBox;
import javafx.scene.paint.Color;
import javafx.scene.text.Font;


public class Main extends Application {
	
	static int width = 20;
	static int height = 20;
	
	static int foodColor = 0;
	static int foodX = 0;
	static int foodY = 0;
	
	// snake 부분 
	static int speed = 5;
	static int cornerSize = 25;
	//사각형 뱀
	static List<Corner> snake = new ArrayList<>();
	static Dir direction = Dir.left;
	
	static boolean gameOver = false;
	
	// 음식 위치 랜덤 생성을 위해 필요
	static Random rand = new Random();
	
	// directions 제어
	public enum Dir {
		left, right, up, down
	}
	
	public static class Corner {
		int x;
		int y;
		
		public Corner(int x, int y) {
			this.x = x;
			this.y = y;
			}
	}


	public void start(Stage primaryStage) {
		try {
			newFood();
			
			VBox root = new VBox();
			Canvas c = new Canvas(width*cornerSize, height*cornerSize);
			GraphicsContext gc = c.getGraphicsContext2D();
			root.getChildren().add(c);
			
			// flip book (그림 여러장 책으로 넘기면 애니메이션 같이 보이는 효과)
			new AnimationTimer() {
				long lastTick = 0;
				
				public void handle(long now) {
					if(lastTick == 0) {
						lastTick = now;
						tick(gc);
						
						return;
					}
					
					if(now - lastTick > 1000000000 / speed) {
						lastTick = now;
						tick(gc);
					}
					
				}
			}.start();
			
			
			Scene scene = new Scene(root, width*cornerSize, height*cornerSize);
			
			// 방향 제어
			scene.addEventFilter(KeyEvent.KEY_PRESSED, key -> {
				if (key.getCode() == KeyCode.W) {
					direction = Dir.up;
				}
				if (key.getCode() == KeyCode.A) {
					direction = Dir.left;
				}
				if (key.getCode() == KeyCode.S) {
					direction = Dir.down;
				}
				if (key.getCode() == KeyCode.D) {
					direction = Dir.right;
				}

			});
			
			// 처음 시작 snake 모양 크기 설정
			snake.add(new Corner(width/2, height/2));
			snake.add(new Corner(width/2, height/2));
			snake.add(new Corner(width/2, height/2));
			
			scene.getStylesheets().add(getClass().getResource("application.css").toExternalForm());
			primaryStage.setScene(scene);
			primaryStage.setTitle("SNAKE GAME");
			primaryStage.show();
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	// gameOver 체크
	public static void tick(GraphicsContext gc) {
		if(gameOver) {
			gc.setFill(Color.RED);
			gc.setFont(new Font("",50));
			gc.fillText("GAME OVER", 100, 250);
			
			return;
		}
		
		for(int i = snake.size() -1; i>=1; i--) {
			snake.get(i).x = snake.get(i-1).x;
			snake.get(i).y = snake.get(i-1).y;
		}
		
		// border 터치시 gameOver
		switch(direction) {
		case up:
			snake.get(0).y--;
			if(snake.get(0).y < 0) {
				gameOver = true;
			}
			break;
		case down:
			snake.get(0).y++;
			if(snake.get(0).y > height) {
				gameOver = true;
			}
			break;
		case left:
			snake.get(0).x--;
			if(snake.get(0).x < 0) {
				gameOver = true;
			}
			break;
		case right:
			snake.get(0).x++;
			if(snake.get(0).x > width) {
				gameOver = true;
			}
			break;
		}
	
	
		// 음식 먹었을 때
		if(foodX == snake.get(0).x && foodY == snake.get(0).y) {
			snake.add(new Corner(-1, -1));
			newFood();
		}
		
		// 자기 꼬리 부딫혔을 때
		for(int i = 1; i < snake.size(); i++) {
			if(snake.get(0).x == snake.get(i).x && snake.get(0).y == snake.get(i).y) {
				gameOver = true;
			}
		}
		
		// 게임 배경
		gc.setFill(Color.BLACK);
		gc.fillRect(0, 0, width*cornerSize, height*cornerSize);
		
		// 점수 표시
		gc.setFill(Color.WHITE);
		gc.setFont(new Font("",30));
		gc.fillText("Score: "+(speed-6), 10, 30);
		
		// 음식 색깔 랜덤 설정
		Color cc = Color.WHITE;
		
		switch(foodColor) {
		case 0: cc = Color.PURPLE;
		break;
		case 1: cc = Color.LIGHTBLUE;
		break;
		case 2: cc = Color.YELLOW;
		break;
		case 3: cc = Color.PINK;
		break;
		case 4: cc = Color.ORANGE;
		break;
		}
		
		gc.setFill(cc);
		gc.fillOval(foodX*cornerSize, foodY*cornerSize, cornerSize, cornerSize);
		
		// 뱀을 밝은 녹색은 그림자로 녹색은 뱀 색깔로 설정  
		for(Corner c:snake) {
			gc.setFill(Color.LIGHTGREEN);
			gc.fillRect(c.x*cornerSize, c.y*cornerSize, cornerSize-1, cornerSize-1);
			gc.setFill(Color.GREEN);
			gc.fillRect(c.x*cornerSize, c.y*cornerSize, cornerSize-2, cornerSize-2);
		}
	}
	
	
	
	//food
	public static void newFood() {
		start: while(true) {
			foodX = rand.nextInt(width);
			foodY = rand.nextInt(height);
			
			for(Corner c:snake) {
				if(c.x ==foodX && c.y == foodY) {
					continue start;
				}
			}
			foodColor = rand.nextInt(5);
			speed++;
			break;
		}
	}
	
	public static void main(String[] args) {
		launch(args);
	}
}
