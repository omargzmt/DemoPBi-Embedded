using Microsoft.IdentityModel.Clients.ActiveDirectory;
using Microsoft.Rest;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo_Native_PBI_Embedded
{
    public partial class Exhibiciones : System.Web.UI.Page
    {
        string baseUri = "https://api.powerbi.com/v1.0/myorg/";
        private static string username = "admin@salesstoreintelligencebi.onmicrosoft.com";
        public static string Password = "SiDash2017$";

        public static string ClientID = "b00e7dae-7637-4069-ad5b-dca5845ce675";
        public static string tokn = "";

        private static string authorityUrl = "https://login.windows.net/common/oauth2/authorize/";
        private static string resourceUrl = "https://analysis.windows.net/powerbi/api";

        private static TokenCredentials tokenCredentials = null;
        private static UserPasswordCredential credential = null;
        private static AuthenticationResult authenticationResult = null;

        protected void Page_Load(object sender, EventArgs e)
        {

            credential = new UserPasswordCredential(username, Password);

            // Authenticate using created credentials

            Authorize().Wait();

            if (accessToken.Value != string.Empty)
            {
                GetReport(0);
            }
        }

        private Task Authorize()
        {
            return Task.Run(async () =>
            {
                authenticationResult = null;
                tokenCredentials = null;
                var authenticationContext = new AuthenticationContext(authorityUrl);

                authenticationResult = await authenticationContext.AcquireTokenAsync(resourceUrl, ClientID, credential);

                if (authenticationResult != null)
                {
                    tokenCredentials = new TokenCredentials(authenticationResult.AccessToken, "Bearer");
                    accessToken.Value = authenticationResult.AccessToken;
                }
            });
        }

        //Get a Report. In this sample, you get the first Report.
        protected void GetReport(int index)
        {
            //Configure Reports request
            System.Net.WebRequest request = System.Net.WebRequest.Create(
                String.Format("{0}/Reports",
                baseUri)) as System.Net.HttpWebRequest;

            request.Method = "GET";
            request.ContentLength = 0;
            request.Headers.Add("Authorization", String.Format("Bearer {0}", accessToken.Value));

            //Get Reports response from request.GetResponse()
            using (var response = request.GetResponse() as System.Net.HttpWebResponse)
            {
                //Get reader from response stream
                using (var reader = new System.IO.StreamReader(response.GetResponseStream()))
                {
                    //Deserialize JSON string

                    PBIReports Reports = JsonConvert.DeserializeObject<PBIReports>(reader.ReadToEnd());

                    //Sample assumes at least one Report.
                    //You could write an app that lists all Reports

                    if (Reports.value.Length > 0)
                    {
                        foreach (PBIReport r in Reports.value)
                        {
                            if (r.name == "4E Exhibiciones")
                            {
                                embedurl.Value = r.embedUrl;
                                ReportId.Value = r.id;
                            }
                        }
                        //var report = Reports.value[Reports.value.Length - 1];
                    }
                }
            }
        }
    }
}
