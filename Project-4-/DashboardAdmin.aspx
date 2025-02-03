<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DashboardAdmin.aspx.cs" Inherits="Project_4_.DashboardAdmin" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Admin Dashboard - Library Management System</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        body {
            display: flex;
            min-height: 100vh;
            background: #f9f9f9;
            position: relative;
        }


        .sidebar {
            position: fixed;
            z-index: 1100;
            top: 0;
            left: 0;
            bottom: 0;
            width: 215px;
            height: 100vh;
            padding: 0 1.7rem;
            color: #fff;
            overflow: hidden;
            transition: all 0.5s linear;
            background: #CD7507fa
        }

        /*            .sidebar:hover {
                width: 240px;
                transition: 0.5s;
            }*/

        .menu {
            height: 88%;
            position: relative;
            list-style: none;
            padding: 0;
        }

            .menu li {
                padding: 12px 20px;
                margin: 8px 0;
                border-radius: 8px;
                transition: background 0.3s ease;
                cursor: pointer;
                display: flex;
                align-items: center;
                gap: 15px;
                white-space: nowrap;
            }

                .menu li.active {
                    background-color: #d3a87c;
                    color: #fff;
                    border-radius: 5px;
                }

                .menu li:hover,
                .menu li.active {
                    background: rgba(255, 255, 255, 0.2);
                }

            .menu a {
                text-decoration: none;
                color: white;
                display: block;
            }

        .nav-links .links_name {
            font-size: 14px;
            color: #FFF;
            opacity: 0;
            transition: opacity 0.3s ease;
            overflow: hidden;
        }

        .sidebar:hover .links_name {
            opacity: 1;
        }


        .nav-links li span {
            display: inline-block;
            vertical-align: middle;
        }

        .logo {
            width: 100%;
            text-align: center;
            padding: 10px 0;
        }

            .logo img {
                width: 80%;
                max-width: 120px;
                height: auto;
            }


        .main-content {
            margin-left: 200px;
            margin-top: 70px;
            padding: 20px;
        }


        h3 {
            margin-bottom: 15px;
            color: #333;
        }

        .card-container {
            display: flex;
            gap: 20px;
        }

        .card {
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            text-align: center;
            flex: 1;
        }

            .card h4 {
                margin-bottom: 10px;
                color: #CD7507;
            }

        .card-detail {
            font-size: 24px;
            color: #555;
        }


        .action-btn {
            padding: 5px 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            color: white;
        }

        .accept-btn {
            background-color: green;
        }

        .reject-btn {
            background-color: red;
        }


        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            padding: 10px;
            text-align: center;
            border-bottom: 1px solid #ccc;
        }

        th {
            background-color: #CD7507;
            color: white;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        .header--wrapper {
            position: fixed;
            top: 0;
            left: 200px;
            right: 0;
            background: #FFFFFF;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 15px 20px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            height: 70px;
        }

        /*        Header Title
        .header--title h2 {
            margin: 0;
            color: #CD7507;
        }*/


        .user--info {
            display: flex;
            align-items: center;
            gap: 15px;
        }


        .search--box {
            background: rgb(237, 237,237);
            border-radius: 15px;
            color: rgba(113, 99, 186, 255);
            display: flex;
            align-items: center;
            gap: 5px;
            padding: 4px 12px;
        }

            .search--box input {
                border: none;
                background: transparent;
                padding: 5px;
                outline: none;
            }

            .search--box i {
                font-size: 1.2rem;
                cursor: pointer;
                transition: all 0.5s ease-out;
                color: #CD7507;
            }

                .search--box i:hover {
                    transform: scale(1.2)
                }


        .user--info img {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            cursor: pointer;
        }

        .data-table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
            font-size: 14px;
            text-align: center;
        }

            .data-table th, .data-table td {
                border: 1px solid #ddd;
                padding: 10px;
            }

            .data-table th {
                background-color: #CD7507;
                font-weight: bold;
            }

        .btn-confirm {
            background-color: green;
            color: white;
            padding: 5px 10px;
            border: none;
            cursor: pointer;
            border-radius: 4px;
        }

        .btn-reject {
            background-color: red;
            color: white;
            padding: 5px 10px;
            border: none;
            cursor: pointer;
            border-radius: 4px;
        }
        /* 🚨 Modal Popup Styling */
        .modal {
            display: none;
            position: fixed;
            z-index: 1000;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
        }

        .modal-content {
            background-color: #fff;
            margin: 10% auto;
            padding: 20px;
            border-radius: 10px;
            width: 30%;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
        }

        .close {
            color: red;
            float: right;
            font-size: 28px;
            cursor: pointer;
        }

        .input-field {
            width: 90%;
            padding: 8px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .btn-save {
            background-color: green;
            color: white;
            padding: 8px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .close:hover {
            color: darkred;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="sidebar">
            <div class="logo">
                <asp:Image ID="LogoImage" runat="server" ImageUrl="~/Images/logo-fotor-20250131212957.png" AlternateText="Library Logo" />
            </div>
            <ul class="menu">
                <li class="active">
                    <i class="fas fa-tachometer-alt"></i>
                    <asp:LinkButton ID="lnkDashboard" runat="server" Text="Dashboard" OnClick="ChangeView" CommandArgument="Dashboard" />
                </li>
                <li>
                    <i class="fa-solid fa-sort"></i>
                    <asp:LinkButton ID="lnkOrders" runat="server" Text="Order Requests" OnClick="ChangeView" CommandArgument="OrderRequest" />
                </li>
                <li>
                    <i class="fa-solid fa-users"></i>
                    <asp:LinkButton ID="lnkUsers" runat="server" Text="Users Info" OnClick="ChangeView" CommandArgument="UserInfo" />
                </li>
                <li>
                    <i class="fa-solid fa-book-bookmark"></i>
                    <asp:LinkButton ID="lnkBooks" runat="server" Text="Books" OnClick="ChangeView" CommandArgument="Book" />
                </li>
                <li>
                    <i class="fa-solid fa-people-roof"></i>
                    <asp:LinkButton ID="lnkRooms" runat="server" Text="Rooms" OnClick="ChangeView" CommandArgument="Room" />
                </li>
                <li>
                    <i class="fa-solid fa-people-roof"></i>
                    <asp:LinkButton ID="lnkFeedback" runat="server" Text="Feedback" OnClick="ChangeView" CommandArgument="Feedback" />
                </li>
                <li>
                    <i class="fa-solid fa-right-from-bracket"></i>
                    <asp:LinkButton ID="lnkLogout" runat="server" Text="Logout" OnClick="Logout_Click" />
                </li>
            </ul>
        </div>
        <div class="header--wrapper">
            <div class="header--title">
                <span>Saleh</span>
                <h2>Dashboard</h2>
            </div>
            <div class="user--info">
                <div class="search--box">
                    <i class="fa solid fa-search"></i>
                    <input type="text" placeholder="Search" />
                </div>
                <asp:Image ID="Admin" runat="server" ImageUrl="~/Images/tes1.jpg" AlternateText="admnin" />
            </div>
        </div>
        <div class="main-content">
            <asp:Panel ID="DashboardSection" runat="server" Visible="true">
                <h3>Dashboard Summary</h3>
                <div class="card-container">
                    <div class="card">
                        <h4>Book Reservations</h4>
                        <asp:Label ID="lblBookReservationCount" runat="server" CssClass="card-detail"></asp:Label>
                    </div>
                    <div class="card">
                        <h4>Total Users</h4>
                        <asp:Label ID="lblUserCount" runat="server" CssClass="card-detail"></asp:Label>
                    </div>
                    <div class="card">
                        <h4>Room Reservations</h4>
                        <asp:Label ID="lblRoomReservationCount" runat="server" CssClass="card-detail"></asp:Label>
                    </div>
                </div>
            </asp:Panel>

            <asp:Panel ID="OrderRequestSection" runat="server" Visible="false">


                <asp:Table ID="table11212" runat="server" CssClass="data-table">

                    <asp:TableHeaderRow>
                        <asp:TableHeaderCell>ID</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Email</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Book ID</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Date End</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Time End</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Date Start</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Time Start</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Status</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Confirm</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Reject</asp:TableHeaderCell>
                    </asp:TableHeaderRow>
                </asp:Table>

                <asp:Table ID="table1" runat="server" CssClass="data-table">
                    <asp:TableHeaderRow>
                        <asp:TableHeaderCell>ID</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Email</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Room ID</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Date End</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Time End</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Date Start</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Time Start</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Status</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Confirm</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Reject</asp:TableHeaderCell>
                    </asp:TableHeaderRow>
                </asp:Table>
            </asp:Panel>

            <asp:Panel ID="UserInfoSection" runat="server" Visible="false">
                <h3>User Info</h3>
            </asp:Panel>
            <asp:Panel ID="BookSection" runat="server" Visible="false">
                <div class="container">
                    <asp:DropDownList ID="Status" runat="server">
                        <asp:ListItem Value="0" Text="--Select Status--" />
                        <asp:ListItem Value="1" Text="Available" />
                        <asp:ListItem Value="2" Text="Reserved" />
                    </asp:DropDownList>

                    <asp:Table ID="table2" runat="server" CssClass="data-table">

                        <asp:TableHeaderRow>
                            <asp:TableHeaderCell>ID</asp:TableHeaderCell>
                            <asp:TableHeaderCell>Email</asp:TableHeaderCell>
                            <asp:TableHeaderCell>Date End</asp:TableHeaderCell>
                            <asp:TableHeaderCell>Time End</asp:TableHeaderCell>
                            <asp:TableHeaderCell>Date Start</asp:TableHeaderCell>
                            <asp:TableHeaderCell>Time Start</asp:TableHeaderCell>
                            <asp:TableHeaderCell>Status</asp:TableHeaderCell>
                            <asp:TableHeaderCell>Returned</asp:TableHeaderCell>
                        </asp:TableHeaderRow>
                    </asp:Table>

                </div>
                <div runat="server" class="card" id="CardDiv">
                    <asp:TextBox runat="server" ID="Title" PlaceHolder="Title"></asp:TextBox>
                    <asp:TextBox runat="server" ID="Author" PlaceHolder="Author"></asp:TextBox>
                    <asp:TextBox runat="server" ID="Category" PlaceHolder="Category"></asp:TextBox>
                    <%--There's a bug here be carfull --%>
                    <asp:Label ID="messegeId" runat="server" Visible="false"></asp:Label>

                    <asp:DropDownList runat="server" ID="dropDownStatus">
                        <asp:ListItem Value="0">-- Select Book Status --</asp:ListItem>
                        <asp:ListItem Value="1">-- Available --</asp:ListItem>

                        <asp:ListItem Value="2">-- Reserved --</asp:ListItem>

                    </asp:DropDownList>
                    <div class="text">
                        <div class="title">
                            Store your photos?
          <div class="tooltip">
              <div class="tooltip-spacing">
                  <div class="tooltip-bg1"></div>
                  <div class="tooltip-bg2"></div>
                  <div class="tooltip-text">?</div>
              </div>
          </div>

                        </div>
                        <div class="info">
                            Do you want to backup your precious moments securely in the cloud? If
          so, Thunderstorm Cloud Inc has got your back.
                        </div>
                    </div>
                    <div class="buttons">

                        <asp:Button runat="server" ID="cancelBtn" CssClass="button" OnClick="cancelBtn_Click" Text="Cancel" />
                        <asp:Button runat="server" CssClass="button button-primary" ID="confirmBtn" OnClick="confirmBtn_Click" Text="Do it!" />


                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="RoomSection" runat="server" Visible="false">
                <asp:Table ID="table3" runat="server" CssClass="data-table">
                    <asp:TableHeaderRow>
                        <asp:TableHeaderCell>Room ID</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Room Name</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Capacity</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Availability</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Edit</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Delete</asp:TableHeaderCell>
                    </asp:TableHeaderRow>
                </asp:Table>
                <div id="editModal" style="display: none;" class="modal">
                    <div class="modal-content">
                        <span class="close" onclick="closeModal()">&times;</span>
                        <h3>Edit Room Details</h3>

                        <asp:HiddenField ID="HiddenRoomID" runat="server" />

                        <label>Room Name:</label>
                        <asp:TextBox ID="txtRoomName" runat="server" CssClass="input-field" /><br />

                        <label>Capacity:</label>
                        <asp:TextBox ID="txtCapacity" runat="server" CssClass="input-field" /><br />

                        <label>Availability:</label>
                        <asp:DropDownList ID="ddlAvailability" runat="server" CssClass="input-field">
                            <asp:ListItem Text="Available" Value="Available" />
                            <asp:ListItem Text="Unavailable" Value="Unavailable" />
                        </asp:DropDownList><br />
                        <br />

                        <asp:Button ID="btnSave" runat="server" Text="Save Changes" OnClick="btnSave_Click" CssClass="btn-save" />
                    </div>
                </div>

            </asp:Panel>
            <asp:Panel ID="FeedbackSection" runat="server" Visible="false"   OnClientClick="openGmail(); return false;" CssClass="menu-link">
                <asp:LinkButton ID="LinkButton1" runat="server" Text="Feedback"
                    OnClientClick="openGmail(); return false;" CssClass="menu-link">
    <i class="fa-solid fa-comment-dots"></i> Feedback
                </asp:LinkButton>

            </asp:Panel>
        </div>
    </form>
    <script>
        function openModal() {
            document.getElementById('editModal').style.display = 'block';
        }

        function closeModal() {
            document.getElementById('editModal').style.display = 'none';
        }
        type = "text/javascript" >
            function openGmail() {
                window.open("https://mail.google.com/mail/u/0/?pli=1#inbox/", "_blank");
            }

    </script>
</body>
</html>