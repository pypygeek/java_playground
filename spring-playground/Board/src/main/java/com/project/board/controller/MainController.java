package com.project.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MainController {

    @RequestMapping("/sbb") // 요청 URL과 매핑 담당
    @ResponseBody // URL 요청에 대한 응답으로 문자열을 리턴하라는 의미
    public String index() {
        return "안녕하세요 sbb에 오신것을 환영합니다.";
    }
}
