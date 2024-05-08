package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MyPageController {

	@RequestMapping(value = "/mypage", method = RequestMethod.GET)
	public String showMyPage() {
		return "mypage";
	}

	@RequestMapping(value = "/saveProfile", method = RequestMethod.POST)
	public String saveProfile(@RequestParam String name, @RequestParam String email, @RequestParam String password,
			@RequestParam String confirmPassword, @RequestParam String bio, Model model) {
		// ��й�ȣ Ȯ��
		if (!password.equals(confirmPassword)) {
			model.addAttribute("error", "Passwords do not match!");
			return "mypage";
		}

		// ������ ������ �𵨿� �߰�
		model.addAttribute("name", name);
		model.addAttribute("email", email);
		model.addAttribute("bio", bio);

		return "mypage";
	}
}
