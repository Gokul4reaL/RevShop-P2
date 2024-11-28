package com.revature.shubham.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

import com.revature.shubham.model.AuthenticationRequest;
import com.revature.shubham.model.AuthenticationResponse;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("jwtToken")
public class LoginController {

    private final RestTemplate restTemplate = new RestTemplate();
   
    private static final String AUTH_URL = "http://desktop-mdpi57u:8080/app/api/authenticate";
    @GetMapping("/home")
    public String homePage() {
        return "home"; // return home.jsp page
    }

    @GetMapping("/login")
    public String loginPage() {
        return "login"; // return login.jsp page
    }
    
    @GetMapping("/adminHeader")
    public String adminPage() {
        return "adminHeader"; // return login.jsp page
    }
    

    @PostMapping("/login")
    public String login(
            @RequestParam("username") String username,
            @RequestParam("password") String password,
            Model model) {
        
        // Prepare AuthenticationRequest
        AuthenticationRequest authRequest = new AuthenticationRequest(username, password);
        
        // Make POST request to authenticate
        ResponseEntity<AuthenticationResponse> responseEntity = restTemplate
                .postForEntity(AUTH_URL, authRequest, AuthenticationResponse.class);

        if (responseEntity.getStatusCode().is2xxSuccessful()) {
            AuthenticationResponse authResponse = responseEntity.getBody();
            
            System.out.println("Authentication Response: " + authResponse);
            // Store the JWT token in the model
            model.addAttribute("jwtToken", authResponse.getJwtToken());

          
            // Check if username is "admin"
            if ("admin".equalsIgnoreCase(username)) {
                return "redirect:/adminHeader"; // Redirect to adminHeader.jsp
            } else {
                return "redirect:/home"; // Redirect to home.jsp for other users
            }
        } else {
            model.addAttribute("error", "Invalid credentials");
            return "login"; // Return to login page on failure
        }
    }


    @GetMapping("/logout")
    public String logout(HttpServletRequest request) {
        // Invalidate the session
        HttpSession session = request.getSession(false);
        if (session != null) {
            session.invalidate();
        }

        return "redirect:/login"; // redirect to login page after logout
    }
}