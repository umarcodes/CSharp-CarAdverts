using System;
using System.Data;
using System.Data.OleDb;

public partial class signUp : System.Web.UI.Page
{
    // connection string for the .accdb extension
    private const String access7ConnectionString =
@"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\Ads.accdb";

    // Data components
    private OleDbConnection myConnection;
    private DataTable myDataTable;
    private OleDbDataAdapter myAdapter;
    private OleDbCommandBuilder myCommandBuilder;

    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string mysql2; // generate an sql insert for the db
        mysql2 = "INSERT INTO Users (Username, [Password], StreetAddress, Age, Gender, FullName) VALUES ('" + usernameTB.Text + "', '" + passwordTB.Text + "','"+StAddressTB.Text+"','"+AgeTB.Text+"','"+GenderDDL.Text+"','"+fullnameTB.Text+"')";
        
            myConnection = new OleDbConnection(access7ConnectionString);
            myAdapter = new OleDbDataAdapter(access7ConnectionString, myConnection);
            myCommandBuilder = new OleDbCommandBuilder(myAdapter);
            myDataTable = new DataTable();
            FillDataTable(mysql2);

        
    }

    private void FillDataTable(String selectCommand)
    {
        try
        {
            myConnection.Open();
            myAdapter.SelectCommand.CommandText = selectCommand;
            // Get the schema for the Users table
            // Stops certain update errors occurring
            myAdapter.FillSchema(myDataTable, SchemaType.Source);
            // Fill the datatable with the rows reurned by the select command
            myAdapter.Fill(myDataTable);
            myConnection.Close();
        }
        catch (OleDbException)
       {
           Button1.Text = "Please choose a different username. This one already exists.";
            if (myConnection.State == ConnectionState.Open)
            myConnection.Close();
        }
    }

    public string mysql2 { get; set; }


    private void UpdateDB()
    {
        try
        {
            myConnection.Open();
            myAdapter.Update(myDataTable);
            myConnection.Close();
        }
        catch (Exception)
        {
            Button1.Text = "Error in UpdateDB";
        }
    }

    [System.Web.Services.WebMethodAttribute(), System.Web.Script.Services.ScriptMethodAttribute()]
    public static string GetDynamicContent(string contextKey)
    {
        return default(string);
    }

    [System.Web.Services.WebMethodAttribute(), System.Web.Script.Services.ScriptMethodAttribute()]
    public static string GetDynamicContent2(string contextKey)
    {
        return default(string);
    }
}