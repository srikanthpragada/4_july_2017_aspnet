using System.Web.Configuration;

public class Database
{
    public static string ConnectionString // static property
    {
        get
        {
            return WebConfigurationManager.ConnectionStrings["localdb"].ConnectionString;
        }
    }
}