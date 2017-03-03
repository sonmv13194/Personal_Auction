 <%@page contentType="text/html" pageEncoding="UTF-8"%>
  <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
          <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!--  CONTENT -->
<div class="main-content-cart">
        <div class="container">
            <div class="row">
                <div class="content-cart-title">
                    <h2 class="content-paget-title-item">Shopping - Cart</h2>
                </div>
                <div class="col-sm-12">
                <div class="content-cart-menu">
                    <ul class="step">
                        <li class="step-current first">
                            <span>1.Cart</span>
                        </li>
                        <li class="step-todo second">
                            <span>2.Sign in</span>
                        </li>
                        <li class="step-todo third">
                            <span>3.Address Ship</span>
                        </li>
                        <li class="step-todo four">
                            <span>4.Ship</span>
                        </li>
                        <li class="step-todo fifth">
                            <span>5.Check out</span>
                        </li>
                    </ul>
                </div>
                <div class="table-responsive">
                    <table class="table table-cart-item">
                        <thead>
                            <tr>
                                <th class="cart-product-item">Image Product
                                </th>
                                <th class="cart-product-item">Description</th>
                                <th class="cart-product-item">Quantity</th>
                                <th class="cart-product-item">Price</th>
                                <th class="cart-product-item">Delete</th>
                            </tr>
                        </thead>
                        <c:forEach var="cart" items="${cart}">
                        <c:set var="s" value="${s +cart.product.price+cart.quantity}"></c:set>
                        <tbody>
                            <tr>
                                <td class="cart-product-infor">
                                    <a href="${pageContext.request.contextPath }/detail?idproduct=${cart.product.idproduct}"><img src="${pageContext.request.contextPath }/resource/images/banner/${cart.product.image}" style="width:100px; height:100px"></a>
                                </td>
                                <td class="cart-product-infor">
                                    <p class="cart-product-name">${cart.product.name }</p>
                                    <small>${cart.product.description }</small><br>
                                    <!-- <small>Size: 32</small><br>
                                    <small>Màu: đen</small> -->
                                </td>
                                <td class="cart-product-infor">
                                    <input class="form-control input-field" type="number" value="${cart.quantity}">
                                </td>
                                <td class="cart-product-infor">
                                    <p><fmt:formatNumber value="${cart.product.price}" type="number" />đ</p>
                                </td>
                                <td class="cart-product-infor">
                                    <a href="#"><i class="glyphicon glyphicon-trash"></i></a>
                                </td>
                            </tr>
                        </tbody>
              			    </c:forEach>
                        <tfoot>
                            <tr class="cart-total-price">
                                <td class="cart-empty" colspan="2" rowspan="4"></td>
                                <td class="cart-right-price" colspan="1" style="font-size:18px; ">Tổng tiền tạm tính</td>
                                <td class="cart-right-price" colspan="1"><fmt:formatNumber value="${s}" type="number" />đ</td>
                                <td class="cart-right-price" colspan="1"></td>
                            </tr>
                            
                        </tfoot>                        
                    </table>
                     <div class="submit-button pull-right" style="margin-bottom:30px;">
                                    <a href="#" class="btn submit-btn">
                                        <span><i class="glyphicon glyphicon-shopping-cart submit-icon"></i>
                                            Checkout Shopping
                                        </span>
                                    </a>
                                </div>
                </div>
                </div>
            </div>
        </div>
    </div>
<!--     END CONTENT -->