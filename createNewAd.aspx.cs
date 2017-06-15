using System;
using System.Data.OleDb;
using System.Drawing;
using System.IO;
using AjaxControlToolkit;

public partial class createNewAd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] == null)
        {
            Response.Redirect("login.aspx");
        }
    }

    public static Image ScaleImage(Image image, int maxHeight, int maxWidth)
    {
        var ratioYaxis = (double)maxHeight / image.Height;
        var ratioXaxis = (double)maxWidth / image.Width;
        var ratio = Math.Min(ratioXaxis, ratioYaxis);

        var newWidth = (int)(image.Width * ratio);
        var newHeight = (int)(image.Height * ratio);

        var newImage = new Bitmap(newWidth, newHeight);
        using (var g = Graphics.FromImage(newImage))
        {
            g.DrawImage(image, 0, 0, newWidth, newHeight);
        }
        return newImage;
    }

    protected void uploadBtn_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            //create instance for image class
            System.Drawing.Image myimg = default(System.Drawing.Image);
            System.Drawing.Image myimgSmall = default(System.Drawing.Image);
            System.Drawing.Image myimgBig = default(System.Drawing.Image);
            //get uploaded image input stream
            try
            {
                myimg = System.Drawing.Image.FromStream(FileUpload1.PostedFile.InputStream);
                myimgSmall = System.Drawing.Image.FromStream(FileUpload1.PostedFile.InputStream);
                myimgBig = System.Drawing.Image.FromStream(FileUpload1.PostedFile.InputStream);
            }
            catch (ArgumentException)
            {
                Response.Write("Please contact the Administrator with the Error Code: AE");
            }
            myimgSmall = ScaleImage(myimgSmall, 225, 225);
            myimg = ScaleImage(myimg, 448, 940);
            myimgBig = ScaleImage(myimg, 4480, 9400);

            MemoryStream str = new MemoryStream();
            //Save it in the server images folder
            string p = @"C:\umar\geTest.jpg";
            string ge = Path.GetExtension(p);
            if (ge == ".jpg")
            {
                Console.WriteLine(ge);
            }
            myimg.Save(Server.MapPath(Request.ApplicationPath + "\\img\\" + makeTB.Text + " " + modelTB.Text + ".jpg"), myimg.RawFormat);
            myimgSmall.Save(Server.MapPath(Request.ApplicationPath + "\\smallimg\\" + makeTB.Text + " " + modelTB.Text + " small" + ".jpg"), myimg.RawFormat);
            myimgBig.Save(Server.MapPath(Request.ApplicationPath + "\\Bigimg\\" + makeTB.Text + " " + modelTB.Text + " big" + ".jpg"), myimg.RawFormat);
        }


        //code for entering information into the database 
        try
        {// generate a string called mysql
            string mysql; string savepath; string savepathsmall; string price;
            //generate the meanings of the string called mysql, savepath and savepathsmall
            //savepath and savepathsmall are only there to help shorten the 'mysql' string
            savepath = "img/" + makeTB.Text + " " + modelTB.Text + ".jpg";
            savepathsmall = "smallimg/" + makeTB.Text + " " + modelTB.Text + " small" + ".jpg";
            price = "£" + priceTB.Text;
            mysql = "INSERT INTO Ads (make, model, picture, picturesmall, phone, email, price, seller) VALUES ('" + makeTB.Text + "','" + modelTB.Text + "','" + savepath + "','" + savepathsmall + "', '" + phoneTB.Text + "','" + EmailTB.Text + "','" + price + "', '" + User.Identity.Name + "')";
            SqlDataSource1.SelectCommand = mysql;
            DataList1.DataBind();
        }
        catch (OleDbException)
        {
            Label3.Text = "Please contact the Administrator with the Error Code: OLEDB";
        }

        if (Request.QueryString["preview"] == "1" && !string.IsNullOrEmpty(Request.QueryString["fileId"]))
        {
            var fileId = Request.QueryString["fileId"];
            var fileContents = (byte[])Session["fileContents_" + fileId];
            var fileContentType = (string)Session["fileContentType_" + fileId];

            if (fileContents != null)
            {
                Response.Clear();
                Response.ContentType = fileContentType;
                Response.BinaryWrite(fileContents);
                Response.End();
            }
        }
    }
}
    