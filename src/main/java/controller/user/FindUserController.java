package controller.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import controller.Controller;

public class FindUserController implements Controller {
	// private static final int countPerPage = 100;	// 한 화면에 출력할 사용자 수

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response)	throws Exception {
		// 로그인 여부 확인
    	if (!UserSessionUtils.hasLogined(request.getSession())) {
            return "redirect:/user/login/form";		// login form 요청으로 redirect
        }
  				
		request.setAttribute("userId", 
				UserSessionUtils.getLoginUserId(request.getSession()));		

		// 마이페이지 화면으로 이동(forwarding)
		return "/user/myPage.jsp";        
    }
}
