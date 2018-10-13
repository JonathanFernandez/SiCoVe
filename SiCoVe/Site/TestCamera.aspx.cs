using IronOcr;
using MODI;
using OpenAlprApi.Api;
using OpenAlprApi.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SiCoVe.Site
{
    public partial class TestCamera : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTraerPatente_Click(object sender, EventArgs e)
        {
            var Ocr = new AutoOcr();
            FileUploadFoto.SaveAs(Server.MapPath("Temp//" + FileUploadFoto.FileName));

            //var Result = Ocr.Read(@"C:\Users\fernajo003\Documents\GitHub\SiCoVe\SiCoVe\Temp\" + FileUploadFoto.FileName);

            imgFoto.ImageUrl = "~/Temp/" + FileUploadFoto.FileName;

            //string extractText = this.ExtractTextFromImage(@"C:\Users\fernajo003\Documents\GitHub\SiCoVe\SiCoVe\Temp\" + FileUploadFoto.FileName);

            //lblPatente2.Text = Result.Text;

            //lblPatente.Text = extractText;
            leer();
        }
        private void leer()
        {
            var apiInstance = new DefaultApi();
            byte[] imageArray = System.IO.File.ReadAllBytes(@"C:\Users\fernajo003\Documents\GitHub\SiCoVe\SiCoVe\Temp\" + FileUploadFoto.FileName);
            string base64ImageRepresentation = Convert.ToBase64String(imageArray);

            var imageBytes = base64ImageRepresentation;//imageBytes_example;  // string | The image file that you wish to analyze encoded in base64 
            var secretKey = "sk_f0eaff3bd37d32a4ea3a427d";  // string | The secret key used to authenticate your account.  You can view your  secret key by visiting  https://cloud.openalpr.com/ 
            var country = "ar";//country_example;  // string | Defines the training data used by OpenALPR.  \"us\" analyzes  North-American style plates.  \"eu\" analyzes European-style plates.  This field is required if using the \"plate\" task  You may use multiple datasets by using commas between the country  codes.  For example, 'au,auwide' would analyze using both the  Australian plate styles.  A full list of supported country codes  can be found here https://github.com/openalpr/openalpr/tree/master/runtime_data/config 
            var recognizeVehicle = 56;  // int? | If set to 1, the vehicle will also be recognized in the image This requires an additional credit per request  (optional)  (default to 0)
            var state = "";// state_example;  // string | Corresponds to a US state or EU country code used by OpenALPR pattern  recognition.  For example, using \"md\" matches US plates against the  Maryland plate patterns.  Using \"fr\" matches European plates against  the French plate patterns.  (optional)  (default to )
            var returnImage = 56;  // int? | If set to 1, the image you uploaded will be encoded in base64 and  sent back along with the response  (optional)  (default to 0)
            var topn = 56;  // int? | The number of results you would like to be returned for plate  candidates and vehicle classifications  (optional)  (default to 10)
            var prewarp = "";// prewarp_example;  // string | Prewarp configuration is used to calibrate the analyses for the  angle of a particular camera.  More information is available here http://doc.openalpr.com/accuracy_improvements.html#calibration  (optional)  (default to )

            try
            {
                InlineResponse200 result = apiInstance.RecognizeBytes(imageBytes, secretKey, country, recognizeVehicle, state, returnImage, topn, prewarp);
                lblPatente3.Text = result.Results[0].Plate;
                //Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                lblPatente3.Text = "Exception when calling DefaultApi.RecognizeBytes: " + e.Message;
                //Debug.Print("Exception when calling DefaultApi.RecognizeBytes: " + e.Message);
            }
        }
        private string ExtractTextFromImage(string filePath)
        {
            Document modiDocument = new Document();
            modiDocument.Create(filePath);
            modiDocument.OCR(MiLANGUAGES.miLANG_ENGLISH);
            MODI.Image modiImage = (modiDocument.Images[0] as MODI.Image);
            string extractedText = modiImage.Layout.Text;
            modiDocument.Close();
            return extractedText;
        }
    }
}