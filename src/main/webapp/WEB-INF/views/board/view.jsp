<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<div id="main">
    <div class="mt-5">
        <i class="fa-solid fa-pen-to-square fa-2xl"> 게시판 </i>
        <hr>
    </div>

    <div class="row mt-5">
        <div class="row offset-2 col-4">
            <button type="button" class="btn btn-light col-4" id="prevbtn">
                <i class="fa fa-chevron-left"></i> 이전 게시물
            </button>
            <button type="button" class="btn btn-light col-4" id="nextbtn">
                <i class="fa fa-chevron-right"></i> 다음 게시물
            </button>
        </div>
        <div class="col-4 text-end">
            <button type="button" class="btn btn-light" id="go2list">
                <i class="fa fa-list"></i> 목록으로
            </button>
        </div>
    </div>

    <div class="row mt-2 offset-2 col-8">
        <table>
            <tr>
                <th class="vtit" colspan="2">${bd.title}</th>
            </tr>
            <tr class="vinfo">
                <td class="text-start">${bd.userid}</td>
                <td class="text-end">${bd.regdate} / ${bd.thumbs} / ${bd.views}</td>
            </tr>
            <tr>
                <td class="vcont text-start" colspan="2">${bd.contents}</td>
            </tr>
        </table>
    </div>

    <div class="row mt-2">
        <div class="row offset-2 col-4">
            <c:if test="${not empty sessionScope.UID and sessionScope.UID eq bd.userid}">
                <button type="button" class="btn btn-warning col-4" id="upbtn">
                    <i class="fa fa-pencil"></i> 수정하기
                </button>
                <button type="button" class="btn btn-danger col-4" id="rmvbtn">
                    <i class="fa fa-trash-o"></i> 삭제하기
                </button>
            </c:if>
        </div>
        <div class="col-4 text-end">
            <button type="button" class="btn btn-primary" id="go2write">
                <i class="fa fa-plus-circle"></i> 새글쓰기
            </button>
        </div>
    </div>

</div>

<script src="/assets/js/board.js"></script>