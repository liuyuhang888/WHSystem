package com.WHSystem.service.impl;

import com.WHSystem.Dao.IVenderDao;
import com.WHSystem.entity.Vender;
import com.WHSystem.service.VenderService;
import com.WHSystem.utils.RodomIdUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


/**
 * @author 刘宇航
 */
@Service
@Transactional
public class VenderServiceImpl implements VenderService {
    @Autowired
    private IVenderDao ivenderDao;

    @Override
    public List<Vender> findVenderList() {
        return ivenderDao.findAll();
    }

    @Override
    public Vender findVenderById(String venderId) {
        return ivenderDao.findById(venderId);
    }

    @Override
    public void addVender(Vender vender) {
        vender.setVenderId(RodomIdUtil.getRodomId());
        ivenderDao.saveVender(vender);
    }

    @Override
    public void changeVender(Vender vender) {
        ivenderDao.updateById(vender);
    }
}
