package com;

import java.io.IOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;

public class PingAT {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String targetUrl = "http://192.168.0.9:8081/Servlet/ex07radioCheckBox";
        int numAccesses = 100; // 반복 횟수
        String postData = "marriage=기혼자&hobby=넷플릭스&hobby=게임"; // POST 데이터
        

        try {
            URL url = new URL(targetUrl);

            // 사이트 접속
            for (int i = 0; i < numAccesses; i++) {
                HttpURLConnection connection = (HttpURLConnection) url.openConnection();
                connection.setRequestMethod("POST");
                connection.setDoOutput(true);

                // POST 데이터 전송
                OutputStream outputStream = connection.getOutputStream();
                byte[] postDataBytes = postData.getBytes("EUC-KR");
                outputStream.write(postDataBytes);
                outputStream.flush();
                outputStream.close();

                int responseCode = connection.getResponseCode();
                System.out.println("응답 코드: " + responseCode);
                connection.disconnect();
                System.out.println("사이트 접속: " + (i + 1));
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
	}

}
