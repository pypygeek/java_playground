package application;

import java.util.Random;
import javafx.animation.KeyFrame;
import javafx.animation.Timeline;
import javafx.application.Application;
import javafx.scene.Scene;
import javafx.scene.canvas.Canvas;
import javafx.scene.canvas.GraphicsContext;
import javafx.scene.layout.StackPane;
import javafx.scene.paint.Color;
import javafx.scene.text.Font;
import javafx.scene.text.TextAlignment;
import javafx.stage.Stage;
import javafx.util.Duration;



public class PongGame extends Application {
	
	// 경기장 크기 성정
	private static final int width = 800;
	private static final int height = 600;
	
	// 플레이 바 크기 설정
	private static final int PLAYER_HEIGHT = 100;
	private static final int PLAYER_WIDTH = 15;
	
	// 공 설정
	private static final double BALL_R = 15;
	private int ballXSpeed = 1;
	private int ballYSpeed = 1;
	
	// 위치 설정
	private double userYPos = height / 2;
	private double computerYPos = height / 2;
	private double ballXPos = width / 2;
	private double ballYPos = height / 2;
	private int userXPos = 0;
	private double computerXPos = width - PLAYER_WIDTH;
	
	//스코어
	private int scoreUser = 0;
	private int scoreComputer = 0;
	
	private boolean gameStarted;
	
	public void start(Stage stage) throws Exception {
		stage.setTitle("P O N G G A M E");
		Canvas canvas = new Canvas(width, height);
		GraphicsContext gc = canvas.getGraphicsContext2D();
		Timeline tl = new Timeline(new KeyFrame(Duration.millis(10), e ->run(gc)));
		tl.setCycleCount(Timeline.INDEFINITE);
		
		// 마우스 컨트롤 부분
		canvas.setOnMouseMoved(e -> userYPos = e.getY());
		canvas.setOnMouseClicked(e -> gameStarted = true);
		stage.setScene(new Scene(new StackPane(canvas)));
		stage.show();
		tl.play();
	}

	private void run(GraphicsContext gc) {
		// 배경색 설정
		gc.setFill(Color.BLACK);
		gc.fillRect(0,  0,  width, height);
		
		// 텍스트 색 설정
		gc.setFill(Color.WHITE);
		gc.setFont(Font.font(25));
		
		if(gameStarted) {
			// 공 움직임 설정
			ballXPos += ballXSpeed;
			ballYPos += ballYSpeed;
			
			//컴퓨터가 공 따라가기
			if(ballXPos < width - width  / 4) {
				computerYPos = ballYPos - PLAYER_HEIGHT / 2;
			}  else {
				computerYPos =  ballYPos > computerYPos + PLAYER_HEIGHT / 2 ?computerYPos += 1:computerYPos - 1;
			}
			
			// 공 그리기
			gc.fillOval(ballXPos, ballYPos, BALL_R, BALL_R);
			
		} else {
			// 시작 메시지 출력
			gc.setStroke(Color.WHITE);
			gc.setTextAlign(TextAlignment.CENTER);
			gc.strokeText("시작하기", width / 2, height / 2);
			
			// 시작 위치로 공 위치 재설정
			ballXPos = width / 2;
			ballYPos = height / 2;
			
			// 공 스피드 및 방향 재설정
			ballXSpeed = new Random().nextInt(2) == 0 ? 1: -1;
			ballYSpeed = new Random().nextInt(2) == 0 ? 1: -1;
		}
		
		// 공이 canvas에 머물때
		if(ballYPos > height || ballYPos < 0) ballYSpeed *= -1;
		
		// 컴퓨터가 점수 얻는 경우
		if(ballXPos < userXPos - PLAYER_WIDTH) {
			scoreComputer++;
			gameStarted = false;
		}
		
		// 사용자가 점수 얻는 경우
		if(ballXPos > computerXPos + PLAYER_WIDTH) {
			scoreUser++;
			gameStarted = false;
		}
		
		// 공 속도 올리기
		if( ((ballXPos + BALL_R > computerXPos) && ballYPos >= computerYPos && ballYPos <= computerYPos + PLAYER_HEIGHT) ||
		((ballXPos < userXPos + PLAYER_WIDTH) && ballYPos >= userYPos && ballYPos <= userYPos + PLAYER_HEIGHT) ) {
			ballXSpeed += 1 * Math.signum(ballXSpeed);
			ballYSpeed += 1 * Math.signum(ballYSpeed);
			ballXSpeed *= -1;
			ballYSpeed *= -1;
		}
		
		// 점수 출력
		gc.fillText(scoreUser + "\t\t\t\t\t\t\t\t" + scoreComputer, width / 2, 100);
		
		// 플레이 바 출력
		gc.fillRect(userXPos, userYPos, PLAYER_WIDTH, PLAYER_HEIGHT);
		gc.fillRect(computerXPos, computerYPos, PLAYER_WIDTH, PLAYER_HEIGHT);
	}
	
	// 어플리케이션 시작
	public static void main(String[] args) {
		launch(args);
	}
}
