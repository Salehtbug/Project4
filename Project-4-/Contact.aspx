<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Project_4_.Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous" />
    <style>
       @import url('https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&family=Open+Sans:ital,wght@0,300..800;1,300..800&display=swap');

*:not(i) {
    font-family: "Montserrat", serif !important;
}

.navbar {
    background-color: #ECE4D3;
}

.navbar-nav .nav-link {
    position: relative;
    padding-bottom: 5px;
    transition: color 0.3s ease-in-out;
    margin-left: 40px;
    color: #CD7507;
    font-weight: 500;
}

    .navbar-nav .nav-link::after {
        content: "";
        position: absolute;
        left: 50%;
        bottom: 0;
        width: 0;
        height: 3px;
        background-color: #285f59;
        transition: all 0.3s ease-in-out;
        transform: translateX(-50%);
    }

    .navbar-nav .nav-link:hover::after {
        width: 100%;
    }

    /* .navbar-nav .nav-link:active::after {
    width: 100%;
    content: "";
    position: absolute;
    left: 50%;
    bottom: 0;
    height: 3px;
    background-color: #285f59; 
    transition: all 0.3s ease-in-out;
    transform: translateX(-50%);
} */

    .navbar-nav .nav-link:hover {
        color: #285f59;
    }




    /* Contact Us Section Design */
.contact-section {
    background-color: #f9f9f9;
    padding: 50px 0;
}

.contact-section h2 {
    font-size: 2.5rem;
    font-weight: 700;
    color: #285f59;
    margin-bottom: 30px;
    text-align: center;
    text-transform: uppercase;
}

.form-container {
    max-width: 600px;
    margin: 0 auto;
    background-color: #ffffff;
    padding: 30px;
    border-radius: 8px;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
}

.form-group {
    margin-bottom: 20px;
}

.form-group label {
    font-weight: 600;
    color: #333;
    font-size: 1.1rem;
    margin-bottom: 8px;
    display: block;
}

.form-control {
    border-radius: 8px;
    border: 1px solid #ddd;
    padding: 15px;
    font-size: 1rem;
    width: 100%;
    box-sizing: border-box;
    transition: border 0.3s ease-in-out;
}

.form-control:focus {
    border-color: #285f59;
    outline: none;
}

.send-button {
    background-color: #285f59;
    color: #fff;
    font-size: 1.1rem;
    font-weight: 600;
    padding: 12px 30px;
    border-radius: 8px;
    border: none;
    cursor: pointer;
    width: 100%;
    transition: background-color 0.3s ease-in-out;
}

.send-button:hover {
    background-color: #1e4c43;
}

/* Additional Styling */
.contact-section .form-container .form-group input,
.contact-section .form-container .form-group textarea {
    transition: border-color 0.3s ease;
}

.contact-section .form-container .form-group input:focus,
.contact-section .form-container .form-group textarea:focus {
    border-color: #285f59;
}

@media (max-width: 767px) {
    .contact-section h2 {
        font-size: 2rem;
    }

    .form-container {
        padding: 20px;
    }

    .form-group label {
        font-size: 1rem;
    }

    .send-button {
        font-size: 1rem;
        padding: 10px 20px;
    }
}






/*------- Footer Section Start -----------*/
footer {
    color: #caced1 !important;
    border: none;
}

    footer li {
        margin-top: 20px;
        margin-bottom: 20px;
    }

    footer .Careers {
        cursor: pointer;
        color: #1E88E5;
    }

    footer .row-1 {
        background-color: #1b3f3b !important;
        padding: 1%;
        width: 100%;
    }

    footer .row-2 {
        background-color: #285f59 !important;
    }

    footer i {
        font-size: 1.5rem;
        margin-left: 2%;
    }

    footer .nav-link {
        position: relative;
        padding-bottom: 5px;
        transition: color 0.3s ease-in-out;
        margin-left: 40px;
        /* color: #CD7507 ; */
        /* font-weight: 600; */
        width: fit-content;
    }

        footer .nav-link::after {
            content: "";
            position: absolute;
            left: 50%;
            bottom: 0;
            width: 0;
            height: 3px;
            background-color: #CD7507;
            transition: all 0.3s ease-in-out;
            transform: translateX(-50%);
        }

        footer .nav-link:hover::after {
            width: 100%;
        }

        footer .nav-link:hover {
            color: #CD7507;
        }

@media (max-width: 426px) {
    footer .nav-link {
        margin-left: 1% !important;
    }

    .navbar .nav-link {
        margin: 2% 0 2% 5%;
    }

    .navbar-toggler:focus,
    .navbar-toggler:active {
        outline: none !important;
        box-shadow: none !important;
        border: none;
    }

    .navbar-toggler {
        border: none;
    }

    .navbar {
        padding: 5%;
    }

    .navbar-brand {
        width: 17% !important;
    }
}

/*------- Footer Section End -----------*/ 
    </style>

</head>
<body>
    <form id="form1" runat="server" action="https://api.web3forms.com/submit" method="POST" >

            <input type="hidden" name="access_key" value="41e28286-dfaf-471d-aeb3-8f6fc562a4d7">

                               <!--Navbar Start-->
            <nav class="navbar navbar-expand-lg sticky-top">
                <div class="container">
                    <a class="navbar-brand" href="#" style="width: 5%; padding: 0;">
                        <img src="Images\logo.png" width="100%"></a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                        aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav ms-auto" id="navLinks" runat="server">
                            <li class="nav-item">
                                <a class="nav-link under" href="Home.aspx">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link under" href="#">About</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link under" href="#">Services</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link under" href="#">Contact</a>
                            </li>

                            <li class="nav-item">
                                <asp:LinkButton Visible="false" ID="signIn" runat="server" href="../Users/regestrationPage.aspx" CssClass="nav-link border">SignIn</asp:LinkButton>
                            </li>
                            <li class="nav-item">
                                <asp:LinkButton Visible="false" ID="logIn" runat="server" href="../Users/loginPage.aspx" CssClass="nav-link border">LogIn</asp:LinkButton>
                            </li>

                            <li class="nav-item">
                                <asp:LinkButton Visible="false" ID="profile" runat="server" href="../Users/ProfilePage.aspx" CssClass="nav-link border">Profile</asp:LinkButton>
                            </li>
                            <li class="nav-item">
                                <asp:LinkButton Visible="false" ID="lnkLogout" runat="server" OnClick="lnkLogout_Click" CssClass="nav-link border">Logout</asp:LinkButton>
                            </li>

                        </ul>
                    </div>
                </div>
            </nav>
            <!--Navbar End-->
        <div>
            <div class="container my-5">
              

                <div class="tab-content mt-3" id="myTabContent">
                    <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                        <div class="container mt-5">
                            <div class="card shadow-lg p-4">
                                <div class="text-center">

                                    <asp:Image ID="Image1" runat="server" ImageUrl="../Images/logo.png" AlternateText="My Image" Width="300px" />
                                </div>
        <!-- Contact Us Section -->
        <section class="contact-section">
            <div class="container">
                <h2>Contact Us</h2>
                <div class="form-container">
                    <asp:Panel ID="ContactFormPanel" runat="server">
                        <div class="form-group">
                            <label for="first-name">First Name</label>
                            <asp:TextBox ID="FirstName" runat="server" CssClass="form-control"  required="required"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="last-name">Last Name</label>
                            <asp:TextBox ID="LastName" runat="server" CssClass="form-control"  required="required"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="email">Email</label>
                            <asp:TextBox ID="Email" runat="server" CssClass="form-control"  TextMode="Email" required="required"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="message">Message</label>
                            <asp:TextBox ID="Message" runat="server" CssClass="form-control"  Rows="4" required="required"></asp:TextBox>
                        </div>
                        <asp:Button ID="SendButton" runat="server" CssClass="send-button" Text="Send" OnClick="SendButton_Click" />
                    </asp:Panel>
                </div>
            </div>
        </section>
    
                           
                </div>
            </div>
        </div>
                    </div>
                                    </div>
                                </div>


              <footer>
                <div class="justify-content-center mb-0 pt-5 pb-0 row-2 px-3">
                    <div class="col-12">
                        <div class="row row-2">
                            <div class="col-sm-3 text-md-center">
                                <img src="../Images/logo.png" width="30%">
                            </div>
                            <div class="col-sm-3  my-sm-0 mt-5">
                                <ul class="list-unstyled">
                                    <li class="mt-0 nav-item"><a class="nav-link" href="#">Home</a></li>
                                    <li class="nav-item"><a class="nav-link" href="#">Services</a></li>
                                </ul>
                            </div>
                            <div class="col-sm-3  my-sm-0 mt-5">
                                <ul class="list-unstyled">
                                    <li class="mt-0 nav-item"><a class="nav-link" href="#">Contact Us</a></li>
                                    <li class="nav-item"><a class="nav-link" href="#">About Us</a></li>
                                    <li class="nav-item"><a class="nav-link" href="#">Location</a></li>
                                </ul>
                            </div>
                            <div class="col-sm-3  my-sm-0 mt-5">
                                <ul class="list-unstyled">
                                    <li class="mt-0 ">Have Any Question?</li>
                                    <li>
                                        <i class="fa-regular fa-envelope" style="font-size: 1rem; margin-right: 2%;"></i>bookunity@email.com</li>
                                    <li><i class="fa-solid fa-phone" style="font-size: 1rem; margin-right: 2%;"></i>+962-000000000</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class=" justify-content-center mt-0 pt-0 row-1 mb-0 pb-0 px-sm-3 px-2">
                    <div class="col-12">
                        <div class="row row-1 no-gutters">
                            <div class="col-sm-3 col-auto text-center"><small>&#9400; BookUnity 2025</small></div>
                            <div class="col-md-3 col-auto "></div>
                            <div class="col-md-3 col-auto"></div>
                            <div class="col  my-auto text-md-left text-right "><small>Follow Us <span><i class="fa-brands fa-instagram"></i></span><span><i class="fa-brands fa-square-facebook"></i></span><span><i class="fa-brands fa-whatsapp"></i></span></small></div>
                        </div>
                    </div>
                </div>
            </footer>
    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>