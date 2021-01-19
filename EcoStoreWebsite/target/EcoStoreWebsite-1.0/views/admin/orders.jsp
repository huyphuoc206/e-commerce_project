<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url var="APIurl" value="/api-admin-order"/>
<c:url var="OrderUrl" value="/quan-tri/don-hang"/>

<html>
<head>
    <title>Quản lý đơn hàng</title>
</head>
<body>
<div class="content mt-3">
    <div class="animated fadeIn">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <strong class="card-title">Danh sách đơn hàng</strong>
                    </div>
                    <div class="card-header">
                        <c:if test="${not empty message}">
                            <div class="text-center float-left alert alert-${alert}">${message}</div>
                        </c:if>
                        <div class="float-right">
                            <a href="#deleteOrderModal" class="btn btn-danger" data-toggle="modal"><i
                                    class="fa fa-trash-o" aria-hidden="true"></i> <span>Xóa</span></a>
                        </div>
                    </div>
                    <div class="card-body">
                        <table id="bootstrap-data-table-export" class="table table-striped table-bordered">
                            <thead>
                            <tr>
                                <th class="text-center">
                                                <span class="custom-checkbox">
                                                    <input type="checkbox" id="selectAll">
                                                    <label for="selectAll"></label>
                                                </span>
                                </th>
                                <th class="text-center">Mã đơn hàng</th>
                                <th class="text-center">Ngày tạo</th>
                                <th class="text-center">Tên khách hàng</th>
                                <th class="text-center">Số điện thoại</th>
                                <th class="text-center">Địa chỉ</th>
                                <th class="text-center">Lời nhắn</th>
                                <th class="text-center">Tổng trị giá</th>
                                <th class="text-center">Trạng thái</th>
                                <th class="text-center">PT thanh toán</th>
                                <th class="text-center">Thao tác</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="item" items="${orders}">
                                <tr>
                                    <td class="text-center">
                                                 <span class="custom-checkbox">
                                                    <input type="checkbox" id="checkbox_${item.id}" value="${item.id}">
                                                    <label for="checkbox_${item.id}"></label>
                                                </span>
                                    </td>
                                    <td class="text-center">${item.id}</td>
                                    <td class="text-center">${item.createdDate}</td>
                                    <td>${item.customerName}</td>
                                    <td class="text-center">${item.phone}</td>
                                    <td>${item.address}</td>
                                    <td>${item.message}</td>
                                    <td class="text-center item_price">${item.totalPrice}</td>
                                    <c:if test="${item.status == 0}">
                                        <td class="text-center"><span class="status text-warning">&bull;</span>Đang chờ
                                        </td>
                                    </c:if>
                                    <c:if test="${item.status == 1}">
                                        <td class="text-center"><span class="status text-primary">&bull;</span>Đã xác nhận
                                        </td>
                                    </c:if>
                                    <c:if test="${item.status == 2}">
                                        <td class="text-center"><span class="status text-primary">&bull;</span>Đang giao
                                        </td>
                                    </c:if>
                                    <c:if test="${item.status == 3}">
                                        <td class="text-center"><span class="status text-success">&bull;</span>Thành công
                                        </td>
                                    </c:if>
                                    <c:if test="${item.status == 4}">
                                        <td class="text-center"><span class="status text-danger">&bull;</span>Đã hủy
                                        </td>
                                    </c:if>
                                    <td>${item.payment.name}</td>
                                    <td class="text-center">
<%--                                        editorder.html--%>
                                        <a href="<c:url value='/quan-tri/don-hang?idorder=${item.id}'/>" class="edit"><i class="fa fa-pencil"
                                                                                 aria-hidden="true" data-toggle="tooltip"
                                                                                 title="Chỉnh sửa"></i></a>
<%--                                        orderdetails.html--%>
                                        <a href="<c:url value='/quan-tri/don-hang?idorderdetails=${item.id}'/>" class="detail"><i class="fa fa-eye"
                                                                                      aria-hidden="true" data-toggle="tooltip"
                                                                                      title="Chi tiết"></i></a>

                                    </td>
                                </tr>
                            </c:forEach>


                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div><!-- .animated -->
</div><!-- .content -->

<!-- Delete Modal HTML -->
<div id="deleteOrderModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <form>
                <div class="modal-header">
                    <h4 class="modal-title">Xóa đơn hàng </h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">
                    <p>Bạn chắc chắn muốn xóa những đơn hàng này?</p>
                    <p class="text-warning"><small>Hành động này sẽ không thể khôi phục lại.</small></p>
                </div>
                <div class="modal-footer">
                    <input type="button" class="btn btn-default" data-dismiss="modal" value="Hủy">
                    <button id="deleteOrder" type="submit" class="btn btn-danger" >Xóa</button>
                </div>
            </form>
        </div>
    </div>
</div>
<script>
    $('#deleteOrder').click(function (e) {
        e.preventDefault();
        let data = {}; // mang object name: value
        // lay data khi check vao cac checkbox
        let dataArray = $('tbody input[type=checkbox]:checked').map(function () {
            return $(this).val(); // lay value cua input checked
        }).get();
        if (dataArray.length != 0) {
            data['ids'] = dataArray;
            deleteOrder(data);
        }
    })

    function deleteOrder(data) {
        $('.load').show();
        $.ajax({
            url: '${APIurl}',
            type: 'DELETE',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function (result) {
                $('.load').hide();
                if(result)
                    window.location.href = "${OrderUrl}?message=delete_success&alert=success";
                else
                    window.location.href = "${OrderUrl}?message=delete_fail&alert=danger";
            },
            error: function (error) {
                $('.load').hide();
                window.location.href = "${OrderUrl}?message=system_error&alert=danger";
            }
        })
    }
</script>
</body>
</html>
