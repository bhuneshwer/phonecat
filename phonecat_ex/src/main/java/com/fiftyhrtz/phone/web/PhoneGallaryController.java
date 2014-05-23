package com.fiftyhrtz.phone.web;
import com.fiftyhrtz.phone.domain.PhoneGallary;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;

@RequestMapping("/phonegallarys")
@Controller
@RooWebScaffold(path = "phonegallarys", formBackingObject = PhoneGallary.class)
@RooWebJson(jsonObject = PhoneGallary.class)
public class PhoneGallaryController {
}
