package cn.appsys.interceptor;

import cn.appsys.tools.ResponseResult;
import com.alibaba.fastjson.JSON;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        HttpSession session =request.getSession();
        Object loginUser = session.getAttribute("loginUser");
        if (loginUser==null){
            String header = request.getHeader("X-Requested-With");
            if (header!=null){
                response.setContentType("application/json;charset=utf-8");
                ResponseResult resulte =ResponseResult.fail(403,"登陆超时，请重新登陆");
                String josnString = JSON.toJSONString(resulte);
                response.getWriter().print(josnString);
                return false;
            }
            response.sendRedirect(request.getContextPath()+"/login.html");
            return false;
        }
        return true;
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {

    }
}
