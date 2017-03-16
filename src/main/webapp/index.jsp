<!DOCTYPE html>
<html >
    <head>
        <meta charset="UTF-8">
        <title>RS-WebService(CRUD Operations)</title>

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

        <link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>

        <link rel="stylesheet" href="css/style.css">
          <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


    </head>

    <body>
        <div class="logmod">
            <div class="logmod__wrapper">
                <!--                <span class="logmod__close">Close</span>-->
                <div class="logmod__container">
                    <ul class="logmod__tabs">

                        <li data-tabtar="lgm-1"><a href="#">Add to Contact</a></li>
                        <li data-tabtar="lgm-2"><a href="#">Update</a></li>

                        <li data-tabtar="lgm-3"><a href="#">Delete</a></li>
                        <li data-tabtar="lgm-4"><a href="#">Search By ID</a></li>

                        <li data-tabtar="lgm-5"><a href="#">Search By Name</a></li>
                        <li data-tabtar="lgm-6"><a href="#">view</a></li>


                    </ul>
                    <div class="logmod__tab-wrapper">


                        <!--Add Contact-->

                        <div class="logmod__tab lgm-1">
<!--                            <div class="logmod__heading">
                                <span class="logmod__heading-subtitle">Add New Contact Info.</span>
                            </div>-->
                            <div class="logmod__form">
                                <form accept-charset="utf-8" action="container/wsContact/addContact" method="post" class="simform">
                                    <div class="sminputs">
                                        <div class="input full">
                                            <label class="string optional" for="user-name">User Name*</label>
                                            <input class="string optional" type="text" name="userName" required/>
                                        </div>
                                    </div>

                                    <div class="sminputs">
                                        <div class="input full">
                                            <label class="string optional" for="user-name">E-Mail*</label>
                                            <input class="string optional" type="email" name="mail" required/>
                                        </div>
                                    </div>

                                    <div class="sminputs">
                                        <div class="input string optional">
                                            <label class="string optional" for="user-pw">New Phone*</label>
                                            <input class="string optional"  type="number" name="phone" required/>
                                        </div>

                                    </div>
                                    <div class="simform__actions">
                                        <input class="sumbit" type="submit" value="Add To Database"/>
                                    </div> 
                                </form>
                            </div> 

                        </div>

                        <!--Update Tab-->

                        <div class="logmod__tab lgm-2">
                            <div class="logmod__heading">
                                <span class="logmod__heading-subtitle">Update Contact Info.</span>
                            </div>
                            <div class="logmod__form">
                                <form accept-charset="utf-8" action="container/wsContact/updateContact" method="post" class="simform">
                                    <div class="sminputs">
                                        <div class="input full">
                                            <label class="string optional" for="user-name">ID*</label>
                                            <input class="string optional" type="text" name="id" required/>
                                        </div>
                                    </div>
                                    <div class="sminputs">
                                        <div class="input string optional">
                                            <label class="string optional" for="user-pw">New Phone*</label>
                                            <input class="string optional"  type="text" name="phone" required/>
                                        </div>

                                    </div>
                                    <div class="simform__actions">
                                        <input class="sumbit" type="submit" value="Update Contact"/>
                                    </div> 
                                </form>
                            </div> 

                        </div>


                        <!--          Delete Tab   -->    


                        <div class="logmod__tab lgm-3">
                            <div class="logmod__heading">
                                <span class="logmod__heading-subtitle">Delete Contact Info.</span>
                            </div>
                            <div class="logmod__form">
                                <form accept-charset="utf-8" action="container/wsContact/deleteContact" method="post" class="simform">
                                    <div class="sminputs">
                                        <div class="input full">
                                            <label class="string optional" for="user-name">ID*</label>
                                            <input class="string optional" type="text" name="id" required/>
                                        </div>
                                    </div>

                                    <div class="simform__actions">
                                        <input class="sumbit" type="submit" value="delete Contact"/>
                                    </div> 
                                </form>
                            </div> 

                        </div>

                        <!--Search By Id-->



                        <div class="logmod__tab lgm-4">
                            <div class="logmod__heading">
                                <span class="logmod__heading-subtitle">Search By Contact ID.</span>
                            </div>
                            <div class="logmod__form">
                                <form accept-charset="utf-8"  action="container/wsContact/getSpecContact" method="post" class="simform">
                                    <div class="sminputs">
                                        <div class="input full">
                                            <label class="string optional" for="user-name">ID*</label>
                                            <input class="string optional" type="number" name="id" required/>
                                        </div>
                                    </div>

                                    <div class="simform__actions">
                                        <input class="sumbit" type="submit" value="Get Contact"/>
                                    </div> 
                                </form>
                            </div> 

                        </div>


                        <!--Search By Name-->


                        <div class="logmod__tab lgm-5">
                            <div class="logmod__heading">
                                <span class="logmod__heading-subtitle">Search By Contact name.</span>
                            </div>
                            <div class="logmod__form">
                                <form accept-charset="utf-8"  action="container/wsContact/getContactByName" method="post" class="simform">
                                    <div class="sminputs">
                                        <div class="input full">
                                            <label class="string optional" for="user-name">Name*</label>
                                            <input class="string optional" type="text" name="name" required/>
                                        </div>
                                    </div>

                                    <div class="simform__actions">
                                        <input class="sumbit" type="submit" value="Get Contact"/>
                                    </div> 
                                </form>
                            </div> 

                        </div>

                    </div>
                    
                    <!--View--> 
                    
                     <div class="logmod__tab lgm-6">
                            <div class="logmod__heading">
                                <span class="logmod__heading-subtitle">View Contacts.</span>
                                <center>
                                <table class="table table-striped"  >
                    <thead>
                         <tr>

                        <td bgcolor="#4b8df9">
                            id
                        </td>
                        <td bgcolor="#4b8df9">
                            name

                        </td>
                          <td bgcolor="#4b8df9">
                            mail

                        </td>
                          <td bgcolor="#4b8df9">
                            phone

                        </td>

                    </tr>
                    </thead>
                    <TBODY  id="tab">
                         
                    </TBODY>
                   
                </table>
                                </center>
                            </div>
                         <div class="simform__actions">
                                  

                         </div>                          

                                    <div class="simform__actions">
 <input type="button" class="sumbit" value="get All contacts"  onclick="send()" accept-charset="utf-8" >                                    </div> 
                                </form>
                            </div> 

                        </div>

                    </div>
                    <!-- -->
                    
                </div>
            </div>
        </div>
    </div>
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="js/index.js"></script>
    <script>
        function send(){
         $.ajax({url: 'container/wsContact/getAllContact', //servlet url
                    type: 'GET', //servlet request type

                    dataType: 'json', // Type For output type
                    success: function (data) {
                        console.log(data);
                        table.innerHTML = '';
                        for (i = 0; i < data.length; i++) {
                            var row = table.insertRow(-1);
                            var cell0 = row.insertCell(0);

                            var cell1 = row.insertCell(1);
                            var cell2 = row.insertCell(2);

                            var cell3 = row.insertCell(3);

                            cell0.innerHTML = data[i].id;
                            cell1.innerHTML = data[i].userName;
                            cell2.innerHTML = data[i].mail;

                            cell3.innerHTML = data[i].phone;

                        }
                        // name = data.uname;
                        //message = data.msg;
                    }
                });
                                var table = document.getElementById("tab");

            }
    </script>

</body>
</html>
