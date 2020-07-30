using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CosmicComics
{
    public partial class Add : System.Web.UI.Page
    {
        //Establish Connection String
        OleDbConnection connection = new OleDbConnection(ConfigurationManager.ConnectionStrings["CosmicComicsConnectionString"].ToString());
        OleDbCommand command = new OleDbCommand();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //Insert SQL Statement with corresponding objects
            OleDbCommand command = new OleDbCommand("Insert into [tblComics]" + 
                "(ComicID, ComicTitle, ComicPublisher, ComicVolume, ComicIssue, ComicReleaseDate, ComicPrice, ComicRating, ComicCover)" +
                "values(@ComicID, @ComicTitle, @ComicPublisher, @ComicVolume, @ComicIssue, @ComicReleaseDate, @ComicPrice, @ComicRating, @ComicCover)", connection);

            command.Parameters.AddWithValue("@ComicID", txtId.Text);
            command.Parameters.AddWithValue("@ComicTitle", txtTitle.Text);
            command.Parameters.AddWithValue("@ComicPublisher", txtPublisher.Text);
            command.Parameters.AddWithValue("@ComicVolume", txtVolume.Text);
            command.Parameters.AddWithValue("@ComicIssue", txtIssue.Text);
            command.Parameters.AddWithValue("@ComicReleaseDate", txtReleaseDate.Text);
            command.Parameters.AddWithValue("@ComicPrice", txtPrice.Text);
            command.Parameters.AddWithValue("@ComicRating", txtRating.Text);
            command.Parameters.AddWithValue("@ComicCover", fulCover.FileName);

            connection.Open();
            int x = command.ExecuteNonQuery();

            //Display message to user if insert was successfully or not
            if (x != 0)
            {
                txtId.Text = "";
                txtTitle.Text = "";
                txtPublisher.Text = "";
                txtVolume.Text = "";
                txtIssue.Text = "";
                txtReleaseDate.Text = "";
                txtPrice.Text = "";
                txtRating.Text = "";

                lblUserMessage.Visible = true;
                lblUserMessage.Text = "Comic Succesfully Uploaded!";
                lblUserMessage.ForeColor = System.Drawing.Color.Green;
            }

            else
            {
                lblUserMessage.Visible = false;
            }

            connection.Close();
        }
    }
}