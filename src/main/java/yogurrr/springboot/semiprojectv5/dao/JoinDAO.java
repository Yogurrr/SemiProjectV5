package yogurrr.springboot.semiprojectv5.dao;

import yogurrr.springboot.semiprojectv5.model.Member;
import yogurrr.springboot.semiprojectv5.model.Zipcode;

import java.util.List;

public interface JoinDAO {
    List<Zipcode> selectZipcode(String dong);
    int insertMember(Member m);
    int selectOneUserid(String uid);
    int selectOneMember(Member m);
}
