<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!doctype html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>SemiProjectV4</title>
    <script src="https://kit.fontawesome.com/106939d789.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="/assets/css/semiprojectv4.css">
</head>
<body>
    <div class="container">
        <tiles:insertAttribute name="header" />

        <tiles:insertAttribute name="main" />

        <tiles:insertAttribute name="footer" />
    </div>

    <c:set var="path">
        ${requestScope['javax.servlet.forward.servlet_path']}
    </c:set>
    <c:if test="${! fn:startsWith(path, '/join')}">
    <%-- 로그인 폼 모달 --%>
    <div class="modal fade" id="loginfrm" role="dialog" data-bs-backdrop="static" data-bs-keyboard="false">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h3>로그인</h3>
                    <button type="button" data-bs-dismiss="modal" class="btn btn-light">닫기</button>
                </div>
                <div class="modal-body">
                    <form name="lgnfrm" id="lgnfrm">
                        <div class="row text-danger mb-2">
                            <label class="col-4 form-label text-end mt-1" for="userid">아이디</label>
                            <div class="col-5">
                              <input type="text" id="userid" name="userid" class="form-control border-danger" />
                            </div>
                        </div>
                        <div class="row text-danger mb-2">
                            <label class="col-4 form-label text-end mt-1" for="userid">비밀번호</label>
                            <div class="col-5">
                              <input type="password" id="passwd" name="passwd" class="form-control border-danger" />
                            </div>
                        </div>
                        <div class="row">
                            <label class="col-4">&nbsp;</label>
                            <div class="col-5">
                                <div class="form-check">
                                    <input type="checkbox" class="form-check-input">
                                    <label class="form-check-label text-warning">로그인 상태 유지</label>
                                </div>
                            </div>
                        </div>
                  </form>
                </div>
                <div class="modal-footer justify-content-center">
                  <button type="button" class="btn btn-danger" id="loginbtn">로그인</button>
                  <button type="button" class="btn btn-warning" id="uidpwbtn">아이디/비밀번호 찾기</button>
                </div>
            </div>
        </div>
    </div>
    </c:if>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <script src="/assets/js/semiprojectv4.js"></script>
</body>
</html>
