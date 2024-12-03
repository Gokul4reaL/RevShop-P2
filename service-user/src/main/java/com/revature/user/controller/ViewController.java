package com.revature.user.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import com.revature.user.model.User;
import com.revature.user.util.JWTService;

import jakarta.servlet.http.HttpSession;

@Controller
public class ViewController {

	@Autowired
	RestTemplate restTemplate;
	
	@Autowired
	JWTService jwtService;
	
    @Autowired
    private PasswordEncoder passwordEncoder;

    @GetMapping("/")
    public String home() {
        return "home"; // Serve home.jsp for the home page
    }

    @GetMapping("/login")
    public String loginPage() {
        return "login"; // Serve login.jsp for the login page
    }

    @GetMapping("/registration")
    public String registrationPage() {
        return "registration"; // Serve registration.jsp for the registration page
    }

    @PostMapping("/doLogin")
    public ResponseEntity<?> doLogin(@RequestBody Map<String, String> loginDetails) {
        String email = loginDetails.get("email");
        String password = loginDetails.get("password");

        RestTemplate restTemplate = new RestTemplate();
        String apiUrl = "http://localhost:8080/api/users"; 
        User[] users = restTemplate.getForObject(apiUrl, User[].class);

        if (users != null) {
            for (User user : users) {
                if (user.getEmail().equals(email) && passwordEncoder.matches(password, user.getPassword())) {
                    User.Role role = user.getRoles().iterator().next();

                    // Generate JWT Token
                    UserDetails userDetails = org.springframework.security.core.userdetails.User.builder()
                            .username(user.getEmail())
                            .password(user.getPassword())
                            .roles(role.name())
                            .build();

                    String token = jwtService.generateToken(userDetails);

                    String redirectUrl = switch (role) {
                        case ADMIN -> "/adminPage";
                        case SELLER -> "/sellerPage";
                        case BUYER -> "/buyerPage";
                        default -> "/";
                    };

                    // Include token and redirectUrl in response
                    return ResponseEntity.ok(Map.of(
                            "redirectUrl", redirectUrl,
                            "token", token
                    ));
                }
            }
        }

        // Unauthorized response
        return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body(Map.of("message", "Invalid email or password."));
    }



    @GetMapping("/logout")
    public ModelAndView logout(HttpSession session) {
        // Invalidate the session to clear session data
        session.invalidate();
        
        // Redirect to the desired URL
        return new ModelAndView("redirect:http://localhost:8080/");
    }
    
    
    // Seller page
    @GetMapping("/sellerPage")
    public String sellerPage() {
        return "sellerPage"; // Serve sellerPage.jsp for seller
    }



}
