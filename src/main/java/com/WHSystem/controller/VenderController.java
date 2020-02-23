package com.WHSystem.controller;


import com.WHSystem.entity.Vender;
import com.WHSystem.service.VenderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

@Controller
@RequestMapping("/vender")
public class VenderController {
    @Autowired
    private VenderService venderService;

    @RequestMapping("/addVender")
    public String addVender(Vender vender){
        venderService.addVender(vender);

        return "forward:/product/inputList";
    }

    @RequestMapping("/changeVender")
    public String changeVender(Vender vender){
        venderService.changeVender(vender);

        return "redirect:/product/inputList";
    }

    @RequestMapping("/changeVenderPage")
    public String changeVenderPage(String venderId, Map<String,Object> map){
        Vender venderById = venderService.findVenderById(venderId);
        map.put("vender", venderById);
        return "updata/updateVender";
    }

}
