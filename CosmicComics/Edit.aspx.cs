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
    public partial class Edit : System.Web.UI.Page
    {
        //Establish connection string
        OleDbConnection connection = new OleDbConnection(ConfigurationManager.ConnectionStrings["CosmicComicsConnectionString"].ToString());
        OleDbCommand command = new OleDbCommand();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            //Update SQL Statement with corresponsing objects
            OleDbCommand command = new OleDbCommand("Update [tblComics] " +
                "set ComicTitle = @ComicTitle, ComicPublisher = @ComicPublisher, ComicVolume = @ComicVolume, ComicIssue = @ComicIssue, " +
                "ComicReleaseDate = @ComicReleaseDate, ComicPrice = @ComicPrice, ComicRating = @ComicRating" +
                " where (ComicID = @ComicID)", connection);

            command.Parameters.AddWithValue("@ComicID", ddlId.SelectedItem.Value);
            command.Parameters.AddWithValue("@ComicTitle", txtTitle.Text);
            command.Parameters.AddWithValue("@ComicPublisher", txtPublisher.Text);
            command.Parameters.AddWithValue("@ComicVolume", txtVolume.Text);
            command.Parameters.AddWithValue("@ComicIssue", txtIssue.Text);
            command.Parameters.AddWithValue("@ComicReleaseDate", txtReleaseDate.Text);
            command.Parameters.AddWithValue("@ComicPrice", txtPrice.Text);
            command.Parameters.AddWithValue("@ComicRating", txtRating.Text);

            connection.Open();
            int x = command.ExecuteNonQuery();

            //Display message to user if sucessfully updated or not
            if (x != 0)
            {
                ddlId.SelectedIndex = -1;
                txtTitle.Text = "";
                txtPublisher.Text = "";
                txtVolume.Text = "";
                txtIssue.Text = "";
                txtReleaseDate.Text = "";
                txtPrice.Text = "";
                txtRating.Text = "";

                lblUserMessage.Visible = true;
                lblUserMessage.Text = "Comic Succesfully Updated!";
                lblUserMessage.ForeColor = System.Drawing.Color.Green;
            }

            else
            {
                lblUserMessage.Visible = true;
                lblUserMessage.Text = "Error Updating Comic";
                lblUserMessage.ForeColor = System.Drawing.Color.Red;
            }



            connection.Close();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            //Delete SQL Statement with corresponding objects
            OleDbCommand command = new OleDbCommand("Delete from [tblComics] where ComicID = @ComicID", connection);
            command.Parameters.AddWithValue("@ComicID", ddlId.SelectedItem.Value);

            connection.Open();
            int x = command.ExecuteNonQuery();

            //Display message to user if sucessfully deleted or not
            if (x != 0)
            {
                ddlId.SelectedIndex = -1;
                txtTitle.Text = "";
                txtPublisher.Text = "";
                txtVolume.Text = "";
                txtIssue.Text = "";
                txtReleaseDate.Text = "";
                txtPrice.Text = "";
                txtRating.Text = "";

                lblUserMessage.Visible = true;
                lblUserMessage.Text = "Comic Succesfully Removed!";
                lblUserMessage.ForeColor = System.Drawing.Color.Green;
            }

            else
            {
                lblUserMessage.Visible = false;
            }

            connection.Close();
        }

        protected void ddlId_SelectedIndexChanged(object sender, EventArgs e)
        {
            //When the User selects an ID from DropDownList, populate values to appropriate TextBox
            if (ddlId.SelectedIndex != -1)
            {
                OleDbCommand command = new OleDbCommand("Select ComicTitle, ComicPublisher, ComicVolume, ComicIssue, ComicReleaseDate, ComicPrice, ComicRating " +
                    "from [tblComics] where ComicID = @ComicID", connection);

                command.Parameters.AddWithValue("@ComicID", ddlId.SelectedItem.Value);

                connection.Open();
                OleDbDataReader reader = command.ExecuteReader();
                while (reader.Read())
                {
                    txtTitle.Text = reader[0].ToString();
                    txtPublisher.Text = reader[1].ToString();
                    txtVolume.Text = reader[2].ToString();
                    txtIssue.Text = reader[3].ToString();
                    txtReleaseDate.Text = reader[4].ToString();
                    txtPrice.Text = reader[5].ToString();
                    txtRating.Text = reader[6].ToString();
                }

                reader.Close();
                connection.Close();

                //Allow User to modify TextBoxes once data appears
                txtTitle.ReadOnly = false;
                txtPublisher.ReadOnly = false;
                txtVolume.ReadOnly = false;
                txtIssue.ReadOnly = false;
                txtReleaseDate.ReadOnly = false;
                txtPrice.ReadOnly = false;
                txtRating.ReadOnly = false;
            }

            else
            {
                //Prompt User to select ID before modification
                lblUserMessage.Visible = true;
                lblUserMessage.Text = "Please Select an ID";
                lblUserMessage.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}