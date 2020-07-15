package cn.toj.ssmmdemo.service.impl;

import cn.toj.ssmmdemo.domain.User;
import cn.toj.ssmmdemo.dto.LoginInformationDto;
import cn.toj.ssmmdemo.dto.UserDto;
import cn.toj.ssmmdemo.mapper.UserMapper;
import cn.toj.ssmmdemo.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

/**
 * @author Carlos
 * @description 用户服务实现类
 * @Date 2020/7/15
 */

@Service
public class UserServiceImpl implements IUserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public void registerUser(UserDto userDto) {

        User user = new User();
        user.setUsername(userDto.getUsername());
        user.setPassword(userDto.getPassword());
        user.setSex(userDto.getSex());
        user.setAddress(userDto.getAddress());
        userMapper.insertUser(user);

    }

    @Override
    public Map<String, UserDto> Login(LoginInformationDto dto) {

        User user = userMapper.selectByUserName(dto.getUsername());
        HashMap<String, UserDto> dtoHashMap = new HashMap<>();

        if (user == null) {

            dtoHashMap.put("Login Fail, the user doesn't exist in this database", null);
        } else {

            if (user.getPassword().equals(dto.getPassword())) {
                UserDto userDto = new UserDto();
                userDto.setUsername(user.getUsername());
                userDto.setSex(user.getSex());
                userDto.setAddress(user.getAddress());
                dtoHashMap.put("Login success", userDto);
            } else {
                dtoHashMap.put("User password error, please try again.", null);
            }
        }

        return dtoHashMap;

    }

}
