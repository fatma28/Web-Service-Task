

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="contactClass" scope="session" class="model.Contact"/>
<script src="jquery-1.9.1.min.js"></script>
<!DOCTYPE html>
<html >
    <head>
        <meta charset="UTF-8">
        <title>Responsive CSS Tabs</title>



        <style>
            /* NOTE: The styles were added inline because Prefixfree needs access to your styles and they must be inlined if they are on local disk! */
            @import url("http://fonts.googleapis.com/css?family=Open+Sans:400,600,700");
            @import url("http://netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.css");
            *, *:before, *:after {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }

            html, body {
                height: 100%;
            }

            body {
                font: 14px/1 'Open Sans', sans-serif;
                color: #555;
                background: #eee;
            }

            h1 {
                padding: 50px 0;
                font-weight: 400;
                text-align: center;
            }

            p {
                margin: 0 0 20px;
                line-height: 1.5;
            }

            main {
                min-width: 320px;
                max-width: 800px;
                padding: 50px;
                margin: 0 auto;
                background: #fff;
            }

            section {
                display: none;
                padding: 20px 0 0;
                border-top: 1px solid #ddd;
            }

            input {
                display: none;
            }

            label {
                display: inline-block;
                margin: 0 0 -1px;
                padding: 15px 25px;
                font-weight: 600;
                text-align: center;
                color: #bbb;
                border: 1px solid transparent;
            }

            label:before {
                font-family: fontawesome;
                font-weight: normal;
                margin-right: 10px;
            }

            label[for*='1']:before {
                content: '\f1cb';
            }

            label[for*='2']:before {
                content: '\f17d';
            }

            label[for*='3']:before {
                content: '\f16b';
            }

            label[for*='4']:before {
                content: '\f1a9';
            }

            label:hover {
                color: #888;
                cursor: pointer;
            }

            input:checked + label {
                color: #555;
                border: 1px solid #ddd;
                border-top: 2px solid orange;
                border-bottom: 1px solid #fff;
            }

            #tab1:checked ~ #content1,
            #tab2:checked ~ #content2,
            #tab3:checked ~ #content3,
            #tab4:checked ~ #content4 {
                display: block;
            }

            @media screen and (max-width: 650px) {
                label {
                    font-size: 0;
                }

                label:before {
                    margin: 0;
                    font-size: 18px;
                }
            }
            @media screen and (max-width: 400px) {
                label {
                    padding: 15px;
                }
            }

        </style>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>
        <!--<script src="../resources/prefixfree.min.js" type="text/javascript"></script>-->
    </head>

    <body>
        <h1>Responsive CSS Tabs</h1>

        <main>

            <input id="tab1" type="radio" name="tabs" checked>
            <label for="tab1">View All Contacts</label>

            <input id="tab2" type="radio" name="tabs">
            <label for="tab2">Add Contact</label>

            <input id="tab3" type="radio" name="tabs">
            <label for="tab3">Update Contact</label>

            <input id="tab4" type="radio" name="tabs">
            <label for="tab4">Delete Contact</label>

            <input id="tab5" type="radio" name="tabs">
            <label for="tab5">Search By Id</label>

            <input id="tab5" type="radio" name="tabs">
            <label for="tab5">Search By Name</label>

            <section id="content1">
                <p>
                    Bacon ipsum dolor sit amet beef venison beef ribs kielbasa. Sausage pig leberkas, t-bone sirloin shoulder bresaola. Frankfurter rump porchetta ham. Pork belly prosciutto brisket meatloaf short ribs.
                </p>
                <p>
                    Brisket meatball turkey short loin boudin leberkas meatloaf chuck andouille pork loin pastrami spare ribs pancetta rump. Frankfurter corned beef beef tenderloin short loin meatloaf swine ground round venison.
                </p>
            </section>

            <section id="content2">
                <p>
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
                </p>
            </section>

            <section id="content3">
             
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
           
            </section>

            <section id="content4">
               
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
            </section>



            <section id="content5">
               
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
             
            </section>



            <section id="content6">
               
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
            </section>

        </main>


    </body>
</html>
