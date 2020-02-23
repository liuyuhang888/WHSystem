package com.WHSystem.service;

import com.WHSystem.entity.Vender;

import java.util.List;


public interface VenderService {
    List<Vender> findVenderList();
    Vender findVenderById(String venderId);
    void addVender(Vender vender);
    void changeVender(Vender vender);
}
