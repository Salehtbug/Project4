using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_4_
{
    public partial class DashboardAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadDashboardData1();
            LoadDashboardData();
            LoadDashboardData2();
            LoadDashboardData3();
        }

        private void LoadDashboardData()
        {
            string file = Server.MapPath("~/App_Data/ReservationsBook.txt");
            if (File.Exists(file))
            {
                string[] data = File.ReadAllLines(file);
                List<string> list = new List<string>();

                foreach (string line in data)
                {
                    string[] s = line.Split(',');

                    if (s.Length >= 8 && s[7] == "Accepted")
                    {
                        TableRow row1 = new TableRow();

                        // Reservation Data
                        TableCell cell1 = new TableCell();
                        cell1.Text = s[0];
                        row1.Cells.Add(cell1);

                        TableCell cell2 = new TableCell();
                        cell2.Text = s[1];
                        row1.Cells.Add(cell2);

                        TableCell cell3 = new TableCell();
                        cell3.Text = s[3];
                        row1.Cells.Add(cell3);

                        TableCell cell4 = new TableCell();
                        cell4.Text = s[4];
                        row1.Cells.Add(cell4);

                        TableCell cell5 = new TableCell();
                        cell5.Text = s[5];
                        row1.Cells.Add(cell5);

                        TableCell cell6 = new TableCell();
                        cell6.Text = s[6];
                        row1.Cells.Add(cell6);

                        TableCell cell7 = new TableCell();
                        cell7.Text = s[7];
                        row1.Cells.Add(cell7);

                        Button btn = new Button();
                        btn.Text = "Returned";
                        btn.CommandArgument = s[2].ToString();
                        btn.Click += Returned_btn_Clicked;

                        TableCell cell8 = new TableCell();
                        cell8.Controls.Add(btn);
                        row1.Cells.Add(cell8);

                        table2.Controls.Add(row1);
                    }
                }
            }
        }
        private void LoadDashboardData1()
        {
            string file = Server.MapPath("~/App_Data/ReservationsBook.txt");

            if (File.Exists(file))
            {
                string[] req = File.ReadAllLines(file);

                for (int i = 0; i < req.Length; i++)
                {
                    string[] r = req[i].Split(',');

                    if (r[7] == "Pending")
                    {

                        TableRow row = new TableRow();

                        TableCell cell1 = new TableCell();
                        cell1.Text = r[0];
                        row.Cells.Add(cell1);

                        TableCell cell2 = new TableCell();
                        cell2.Text = r[1];
                        row.Cells.Add(cell2);

                        TableCell cell3 = new TableCell();
                        cell3.Text = r[2];
                        row.Cells.Add(cell3);

                        TableCell cell4 = new TableCell();
                        cell4.Text = r[3];
                        row.Cells.Add(cell4);

                        TableCell cell5 = new TableCell();
                        cell5.Text = r[4];
                        row.Cells.Add(cell5);

                        TableCell cell6 = new TableCell();
                        cell6.Text = r[5];
                        row.Cells.Add(cell6);



                        TableCell cell7 = new TableCell();
                        cell7.Text = r[6];
                        row.Cells.Add(cell7);


                        TableCell cell8 = new TableCell();
                        cell8.Text = r[7];
                        row.Cells.Add(cell8);

                        Button btn1 = new Button();


                        btn1.Text = "Confirm";
                        btn1.CommandArgument = r[0];
                        btn1.Click += confirmBtn_Click;

                        TableCell cell9 = new TableCell();
                        cell9.Controls.Add(btn1);
                        row.Cells.Add(cell9);

                        Button btn2 = new Button();
                        btn2.Text = "Reject";
                        btn2.CommandArgument = r[0];
                        btn2.Click += Reject_Click;

                        TableCell cell10 = new TableCell();
                        cell10.Controls.Add(btn2);
                        row.Cells.Add(cell10);

                        table11212.Rows.Add(row);
                    }
                    else { continue; }
                }
            }
            else
            {
                TableRow row = new TableRow();

                TableCell cell1 = new TableCell();
                cell1.Text = "No Data Found";
                row.Cells.Add(cell1);

                TableCell cell2 = new TableCell();
                cell2.Text = "No Data Found";
                row.Cells.Add(cell2);

                TableCell cell3 = new TableCell();
                cell3.Text = "No Data Found";
                row.Cells.Add(cell3);

                TableCell cell4 = new TableCell();
                cell4.Text = "No Data Found";
                row.Cells.Add(cell4);

                TableCell cell5 = new TableCell();
                cell5.Text = "No Data Found";
                row.Cells.Add(cell5);

                table11212.Rows.Add(row);
            }

        }

        private void LoadDashboardData2()
        {
            string fileRoom = Server.MapPath("~/App_Data/RoomReservations.txt");

            if (File.Exists(fileRoom))
            {
                string[] req1 = File.ReadAllLines(fileRoom);

                for (int i = 0; i < req1.Length; i++)
                {
                    string[] r1 = req1[i].Split(',');

                    TableRow row = new TableRow();

                    TableCell cell1 = new TableCell();
                    cell1.Text = r1[0];
                    row.Cells.Add(cell1);

                    TableCell cell2 = new TableCell();
                    cell2.Text = r1[1];
                    row.Cells.Add(cell2);

                    TableCell cell3 = new TableCell();
                    cell3.Text = r1[2];
                    row.Cells.Add(cell3);

                    TableCell cell4 = new TableCell();
                    cell4.Text = r1[3];
                    row.Cells.Add(cell4);

                    TableCell cell5 = new TableCell();
                    cell5.Text = r1[4];
                    row.Cells.Add(cell5);

                    TableCell cell6 = new TableCell();
                    cell6.Text = r1[5];
                    row.Cells.Add(cell6);

                    TableCell cell7 = new TableCell();
                    cell7.Text = r1[6];
                    row.Cells.Add(cell7);

                    TableCell cell8 = new TableCell();
                    cell8.Text = r1[7];
                    row.Cells.Add(cell8);

                    Button btn1 = new Button();

                    btn1.Text = "Confirm";
                    btn1.CommandArgument = r1[0];
                    btn1.Click += confirmBtn_Click;

                    TableCell cell9 = new TableCell();
                    cell9.Controls.Add(btn1);
                    row.Cells.Add(cell9);

                    Button btn2 = new Button();
                    btn2.Text = "Reject";
                    btn2.CommandArgument = r1[0];
                    btn2.Click += Reject_Click;

                    TableCell cell10 = new TableCell();
                    cell10.Controls.Add(btn2);
                    row.Cells.Add(cell10);

                    table1.Rows.Add(row);
                }
            }
            else
            {
                TableRow row = new TableRow();

                TableCell cell1 = new TableCell();
                cell1.Text = "No Data Found";
                row.Cells.Add(cell1);

                TableCell cell2 = new TableCell();
                cell2.Text = "No Data Found";
                row.Cells.Add(cell2);

                TableCell cell3 = new TableCell();
                cell3.Text = "No Data Found";
                row.Cells.Add(cell3);

                TableCell cell4 = new TableCell();
                cell4.Text = "No Data Found";
                row.Cells.Add(cell4);

                TableCell cell5 = new TableCell();
                cell5.Text = "No Data Found";
                row.Cells.Add(cell5);

                table1.Rows.Add(row);
            }
        }


        private void LoadDashboardData3()
        {
            string fileRoom = Server.MapPath("~/App_Data/Rooms.txt");

            if (File.Exists(fileRoom))
            {
                string[] rooms = File.ReadAllLines(fileRoom);

                foreach (string roomData in rooms)
                {
                    if (!string.IsNullOrWhiteSpace(roomData))
                    {
                        string[] roomDetails = roomData.Split(',');

                        if (roomDetails.Length >= 4)
                        {
                            TableRow row = new TableRow();

                            for (int i = 0; i < 4; i++)
                            {
                                TableCell cell = new TableCell();
                                cell.Text = roomDetails[i];
                                row.Cells.Add(cell);
                            }


                            Button btnEdit = new Button();
                            btnEdit.Text = "Edit";
                            btnEdit.CssClass = "btn-edit";
                            btnEdit.CommandArgument = roomDetails[0]; // Room ID
                            btnEdit.OnClientClick = "openModal(); return false;"; // Open modal via JS
                            btnEdit.Click += EditButton_Click;

                            TableCell editCell = new TableCell();
                            editCell.Controls.Add(btnEdit);
                            row.Cells.Add(editCell);


                            Button btnDelete = new Button();
                            btnDelete.Text = "Delete";
                            btnDelete.CssClass = "btn-delete";
                            btnDelete.CommandArgument = roomDetails[0];
                            btnDelete.Click += RemoveButton_Click;

                            TableCell deleteCell = new TableCell();
                            deleteCell.Controls.Add(btnDelete);
                            row.Cells.Add(deleteCell);

                            table3.Rows.Add(row);
                        }
                    }
                }
            }
        }

        protected void ChangeView(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            string section = btn.CommandArgument;

            DashboardSection.Visible = section == "Dashboard";
            OrderRequestSection.Visible = section == "OrderRequest";
            UserInfoSection.Visible = section == "UserInfo";
            BookSection.Visible = section == "Book";
            RoomSection.Visible = section == "Room";
            FeedbackSection.Visible = section == "Feedback";

        }
        protected void addBookBtn_Click(object sender, EventArgs e)
        {
            string file = Server.MapPath("~/App_Data/Books.txt");

            if (string.IsNullOrEmpty(Title.Text) ||
                string.IsNullOrEmpty(Author.Text) ||
                string.IsNullOrEmpty(Category.Text) ||
                Status.SelectedValue == "0")
            {
                messegeId.Visible = true;
                messegeId.Text = "Please Fill out All TextBoxs";
            }
            else
            {
                try
                {
                    int newId = 1;
                    if (File.Exists(file))
                    {
                        var lastLine = File.ReadAllLines(file).LastOrDefault();
                        if (!string.IsNullOrEmpty(lastLine))
                        {
                            var lastIdParts = lastLine.Split(',');
                            if (lastIdParts.Length > 0)
                            {
                                var lastId = lastIdParts[0];
                                newId = int.Parse(lastId) + 1;
                            }
                        }
                    }

                    using (StreamWriter sw = new StreamWriter(file, true))
                    {

                        sw.WriteLine($"{newId},{Title.Text},{Author.Text},{Category.Text},{Status.SelectedValue}");
                    }

                    messegeId.Visible = true;
                    // فاقع ايرور يا فراس لانه هاي ما بتشتغل مع الليبل ماشي؟
                    messegeId.Text = "Book Added Successfully";
                }
                catch (Exception ex)
                {
                    messegeId.Text = "Error: " + ex.Message;
                    messegeId.Visible = true;
                }
            }
        }


        protected void EditButton_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;


            if (!int.TryParse(btn.CommandArgument, out int roomId))
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('Invalid Room ID');", true);
                return;
            }

            string fileRoom = Server.MapPath("~/App_Data/Rooms.txt");

            if (File.Exists(fileRoom))
            {
                string[] rooms = File.ReadAllLines(fileRoom);

                foreach (string room in rooms)
                {
                    if (string.IsNullOrWhiteSpace(room)) continue;

                    string[] details = room.Split(',');

                    if (details.Length >= 4 && int.TryParse(details[0], out int currentRoomId))
                    {
                        if (currentRoomId == roomId)
                        {

                            HiddenRoomID.Value = details[0];
                            txtRoomName.Text = details[1];
                            txtCapacity.Text = details[2];
                            ddlAvailability.SelectedValue = details[3];


                            ScriptManager.RegisterStartupScript(this, GetType(), "openModal", "openModal();", true);
                            break;
                        }
                    }
                }
            }
        }



        protected void btnSave_Click(object sender, EventArgs e)
        {

            if (!int.TryParse(HiddenRoomID.Value.Trim(), out int roomId))
            {

                Response.Write("<script>alert('Invalid Room ID');</script>");
                return;
            }

            string fileRoom = Server.MapPath("~/App_Data/Rooms.txt");

            if (File.Exists(fileRoom))
            {
                string[] rooms = File.ReadAllLines(fileRoom);
                List<string> updatedRooms = new List<string>();

                foreach (string room in rooms)
                {
                    string[] details = room.Split(',');

                    if (details.Length > 0 && int.TryParse(details[0], out int existingRoomId))
                    {
                        if (existingRoomId == roomId)
                        {
                            details[1] = txtRoomName.Text;
                            details[2] = txtCapacity.Text;
                            details[3] = ddlAvailability.SelectedValue;
                        }
                    }

                    updatedRooms.Add(string.Join(",", details));
                }

                File.WriteAllLines(fileRoom, updatedRooms);
                Response.Redirect(Request.RawUrl);
            }
        }


        protected void RemoveButton_Click(object sender, EventArgs e)
        {


            Button btn = (Button)sender;

            if (int.TryParse(btn.CommandArgument, out int roomId))
            {
                string fileRoom = Server.MapPath("~/App_Data/Rooms.txt");

                if (File.Exists(fileRoom))
                {
                    string[] rooms = File.ReadAllLines(fileRoom);
                    List<string> updatedRooms = new List<string>();

                    foreach (string room in rooms)
                    {
                        string[] details = room.Split(',');


                        if (int.Parse(details[0]) != roomId)
                        {
                            updatedRooms.Add(room);
                        }
                    }

                    File.WriteAllLines(fileRoom, updatedRooms);
                    Response.Redirect(Request.RawUrl);
                }
            };
        }

        protected void cancelBtn_Click(object sender, EventArgs e)
        {
            CardDiv.Style["display"] = "none";
        }


        protected void confirmBtn_Click(object sender, EventArgs e)

        {
            Button btn = (Button)sender;

            int index = Convert.ToInt16(btn.CommandArgument);


            string file = Server.MapPath("~/App_Data/ReservationsBook.txt");

            string fileBook = Server.MapPath("~/App_Data/Books.txt");

            string[] books = File.ReadAllLines(fileBook);

            string[] pending = File.ReadAllLines(file);

            List<string> booksList = new List<string>();
            List<string> ReservationsList = new List<string>();
            List<string> BookHistory = new List<string>();



            for (int i = 0; i < pending.Length; i++)
            {
                string[] p = pending[i].Split(',');

                if (index == Convert.ToInt16(p[0]))
                {
                    // Update the status to "Accepted"
                    pending[i] = $"{p[0]},{p[1]},{p[2]},{p[3]},{p[4]},{p[5]},{p[6]},Accepted";

                    for (int j = 0; j < books.Length; j++)
                    {
                        string[] b = books[j].Split(',');

                        if (b[0] == p[2])
                        {
                            books[j] = $"{b[0]},{b[1]},{b[2]},{b[3]},Reserved";
                        }
                        booksList.Add(books[j]);
                    }
                }
                ReservationsList.Add(pending[i]);

            }

            // Write the updated list back to the file
            File.WriteAllLines(fileBook, booksList);
            File.WriteAllLines(file, ReservationsList);


            Response.Redirect("DashboardAdmin.aspx");

        }
        protected void Reject_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            int index = Convert.ToInt16(btn.CommandArgument);


            string file = Server.MapPath("~/App_Data/ReservationsBook.txt");


            string[] pending = File.ReadAllLines(file);

            List<string> ReservationsList = new List<string>();

            for (int i = 0; i < pending.Length; i++)
            {
                string[] p = pending[i].Split(',');

                if (index == Convert.ToInt16(p[0]))
                {
                    // Update the status to "Rejected"
                    pending[i] = $"{p[0]},{p[1]},{p[2]},{p[3]},{p[4]},{p[5]},{p[6]},Rejected";
                }

                ReservationsList.Add(pending[i]);
            }

            // Write the updated list back to the file
            File.WriteAllLines(file, ReservationsList);

            // Reload the page content after updating the file
            Response.Redirect("DashboardAdmin.aspx");


        }
        protected void Returned_btn_Clicked(object sender, EventArgs e)
        {
            string fileBookHistoryPath = Server.MapPath("~/App_Data/Bookhistory.txt");
            string fileReservationsBookPath = Server.MapPath("~/App_Data/ReservationsBook.txt");
            string fileBooksPath = Server.MapPath("~/App_Data/Books.txt");


            string[] BookHistory = File.ReadAllLines(fileBookHistoryPath);
            string[] ReservationsBook = File.ReadAllLines(fileReservationsBookPath);
            string[] booksPath = File.ReadAllLines(fileBooksPath);

            Button btn = (Button)sender;
            //string BookID = Convert.ToString(btn.CommandArgument);

            List<string> list = new List<string>();
            List<string> Books = new List<string>();
            List<string> ReservationsBookList = new List<string>();



            for (int i = 0; i < ReservationsBook.Length; i++)
            {
                string[] Rb = ReservationsBook[i].Split(',');
                if (Rb[2] != btn.CommandArgument)
                {
                    ReservationsBookList.Add(ReservationsBook[i]);
                }
                else
                {
                    using (StreamWriter sw = new StreamWriter(fileBookHistoryPath, true))
                    {
                        sw.WriteLine(ReservationsBook[i]);
                    }
                }
            }
            File.WriteAllLines(fileReservationsBookPath, ReservationsBookList);


            for (int i = 0; i < booksPath.Length; i++)
            {
                string[] b = booksPath[i].Split(',');

                if (b[0] == btn.CommandArgument.ToString())
                {
                    booksPath[i] = $"{b[0]},{b[1]},{b[2]},{b[3]},Available";
                }
                Books.Add(booksPath[i]);
            }
            File.WriteAllLines(fileBooksPath, Books);


            Response.Redirect("DashboardAdmin.aspx");




        }
        protected void Logout_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Users/loginPage.aspx");
        }
    }
}