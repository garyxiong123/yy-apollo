package com.ctrip.framework.apollo.repository;

import com.ctrip.framework.apollo.model.entity.UserPO;

import org.springframework.data.repository.PagingAndSortingRepository;

import java.util.List;

/**
 * @author lepdou 2017-04-08
 */
public interface UserRepository extends PagingAndSortingRepository<UserPO, Long> {

  List<UserPO> findFirst20ByEnabled(int enabled);

  List<UserPO> findByUsernameLikeAndEnabled(String username, int enabled);

  UserPO findByUsername(String username);

  List<UserPO> findByUsernameIn(List<String> userNames);
}
