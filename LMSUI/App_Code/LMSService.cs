using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Services;

/// <summary>
/// Summary description for LMSService
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
 [System.Web.Script.Services.ScriptService]
public class LMSService : System.Web.Services.WebService
{

    public LMSService()
    {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public string HelloWorld()
    {
        return "Hello World";
    }

    [WebMethod]
    public string LoginCheck(string UserName,string Password)
    {
        string jsondata = "";
        if(UserName == "admin")
        {
            jsondata = "Success";
        }
        else
        {
            jsondata = "Failed";
        }
        //SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnStringDb"].ConnectionString.ToString());

        //DataTable dt = new DataTable();

        //SqlCommand cmd = new SqlCommand();
        //SqlDataAdapter da1 = new SqlDataAdapter(cmd);

        //DataSet ds1 = new DataSet();
        return jsondata;
    }

    private string DataTableToJSONWithJavaScriptSerializer(DataTable table)
    {
        JavaScriptSerializer jsSerializer = new JavaScriptSerializer();
        List<Dictionary<string, object>> parentRow = new List<Dictionary<string, object>>();
        Dictionary<string, object> childRow;
        foreach (DataRow row in table.Rows)
        {
            childRow = new Dictionary<string, object>();
            foreach (DataColumn col in table.Columns)
            {
                childRow.Add(col.ColumnName, row[col]);
            }
            parentRow.Add(childRow);
        }
        return jsSerializer.Serialize(parentRow);
    }
}
