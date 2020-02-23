package com.WHSystem.Dao;

import com.WHSystem.entity.Vender;

import java.util.List;

/**
 * @Auther:
 * @Date: 2020/2/9 11:56
 * @Description:
 */
public interface IVenderDao {
    List<Vender> findAll();

    Vender findById(String venderId);

    Vender findByNmae(String venderName);

    void saveVender(Vender vender);

    void deleteById(String vemderId);

    void updateById(Vender vender);


}
