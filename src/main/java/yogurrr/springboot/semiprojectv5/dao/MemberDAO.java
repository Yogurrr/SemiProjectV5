package yogurrr.springboot.semiprojectv5.dao;

import yogurrr.springboot.semiprojectv5.model.Member;

public interface MemberDAO {
    int selectLogin(Member m);
}
