<%-- 
    Document   : index
    Created on : Mar 15, 2017, 5:33:53 AM
    Author     : fatma
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="contactClass" scope="session" class="model.Contact"/>
<script src="jquery-1.9.1.min.js"></script>
<!DOCTYPE html>
<html>
    <head>
        <title>Start Page</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h1>Hello Web service Restful !</h1>

        <form action="container/wsContact/addContact" method="post">
            <table>
                <tr>
                    <td> User Name:</td>
                    <td> <input type="text" name="userName" required/></td>
                </tr>
                <tr>
                    <td>E-Mail</td>
                    <td> <input type="email" name="mail"/></td>
                </tr>
                <tr>
                    <td>Phone Number</td>
                    <td><input type="number" name="phone"/></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" value="Add To Database"/></td>
                </tr>
            </table>
        </form>
        <br/>
        <br/>
        <br/>
        <form action="container/wsContact/getSpecContact" method="post">
            <table>
                <tr>
                    <td colspan="2"> Get Specific Contact Object</td>
                </tr>
                <tr>
                    <td>ID</td>
                    <td><input type="number" name="id" required/></td>
                </tr>
                <tr>
                    <td colspan="2"><center><input type="submit" value="Get Contact"/></center></td>
                </tr>
            </table>

        </form>

        <br/>
        <br/>
        <br/>

        <form action="container/wsContact/getContactByName" method="post">
            <table>
                <tr>
                    <td colspan="2"> Get Specific Contact Object By Name</td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td><input type="text" name="name" required/></td>
                </tr>
                <tr>
                    <td colspan="2"><center><input type="submit" value="Get Contact"/></center></td>
                </tr>
            </table>

        </form>



        <br/>

    </form>
    <form action="container/wsContact/deleteContact" method="post">
        <table>
            <tr>
                <td colspan="2"> delete contact By id</td>
            </tr>
            <tr>
                <td>ID</td>
                <td><input type="text" name="id" required/></td>
            </tr>
            <tr>
                <td colspan="2"><center><input type="submit" value="delete Contact"/></center></td>
            </tr>
        </table>
    </form>

    <form action="container/wsContact/updateContact" method="post">
        <table>
            <tr>
                <td colspan="2"> update contact By id</td>
            </tr>
            <tr>
                <td>ID</td>
                <td><input type="text" name="id" required/></td>
            </tr>
            <tr>
                <td>New phone</td>
                <td><input type="text" name="phone" required/></td>
            </tr>
            <tr>
                <td colspan="2"><center><input type="submit" value="update Contact"/></center></td>
            </tr>
        </table>
    </form>


    <br/>
    <br/>
    <br/>


    <br/>
    <br/>

    <p>Get All Contacts:</p>
    <form action="container/wsContact/getAllContact" method="post">
        <input type="submit" value="Get All Contact" id="sendBtnId" />
    </form>

    <c:forEach items="${contactClass.contactList}" var="c">
        <c:out value="${c.userName}"/>
        <c:out value="Here"/>
    </c:forEach>

    <div id="myDiv"></div>
    <%--<jsp:getProperty name="contactClass" property="userName"/>--%>
    <script>


//        $(document).ready(function () {


//            $("#sendBtnId").click(function () {
//                $.ajax({
//                    type: 'GET',
//                    url: "http://localhost:8072/WS-Client/container/wsContact/getAllContact",
//                    success: function (data) {
//                        alert(data.uPhone);
//                    }
//                });
//                return false;
//            });

////////////////////////////////
//
//            $.ajax({
//                type: "GET",
//                url: "http://localhost:8072/WS-Client/container/wsContact/getAllContact",
//                dataType: "json",
//                success: function (resp) {
//                    // we have the response  
//                    alert("Server said123:\n '" + resp.userName + "'");
//                },
//                error: function (e) {
//                    alert('Error121212: ' + e);
//                }
//            });
//
///////////////////////////////////////////
//
//        });


//////////////////////////////////////////////
//            $(document).ready(function () {
//                $("#sendBtnId").click(function () {
        <%--<jsp:getProperty name="contactClass" property="userName"/>--%>
//
//                });
//            });

//        function addData() {
//            $.ajax({url: 'com.myCompany.ws.contact/wsContact/WSContact/getAllContact',
//                type: 'POST',
//                dataType: 'json',
//                success:
//                        function (data) {
//                    
//                    for (var i = 0; i < data.length; i++) {
//                        document.getElementById("myDiv").innerHTML = data[i].userName;
//                    }
//                }
//            });
//////////////////////////
//});

//      }  );


//        setInterval(addData, 500);

    </script>
</body>
</html>
