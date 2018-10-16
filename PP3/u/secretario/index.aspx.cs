using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Text.RegularExpressions;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using PP3.App_Start;
using System.Net.Mail;
using System.Net;

namespace PP3.u.secretario
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Enviar_Click(object sender, EventArgs e)
        {
            MailMessage objMail = new MailMessage();
            try
            {

                MailMessage mail = new MailMessage();
                mail.From = new System.Net.Mail.MailAddress("littleheadfilms@gmail.com");

                // The important part -- configuring the SMTP client
                SmtpClient smtp = new SmtpClient();
                smtp.Port = 587;   // [1] You can try with 465 also, I always used 587 and got success
                smtp.EnableSsl = true;
                smtp.DeliveryMethod = SmtpDeliveryMethod.Network; // [2] Added this
                smtp.UseDefaultCredentials = false; // [3] Changed this
                smtp.Credentials = new NetworkCredential("littleheadfilms@gmail.com", "EmailLH12");  // [4] Added this. Note, first parameter is NOT string.
                smtp.Host = "smtp.gmail.com";

                //recipient address
                mail.To.Add(new MailAddress(txt_Email.Text));
                mail.IsBodyHtml = true;
                mail.Subject = txt_Assunto.Text;
                mail.Body = txt_Mensagem.Text;
                //Formatted mail body
                
                //string st = "Test";

                //mail.Body = st;
                smtp.Send(mail);


                /*
                objMail.From = new MailAddress("marcia@cotuca.unicamp.br");
                objMail.Sender = new MailAddress(txt_Email.Text);
                objMail.To.Add(txt_Email.Text);
                objMail.Subject = txt_Assunto.Text;
                objMail.Body = txt_Mensagem.Text;

                SmtpClient cliente = new SmtpClient();
                cliente.Send(objMail);

                /*lbl_mensagem.Text = "EMAIL ENVIADO";
                lbl_mensagem.Visible = true;*/
            }
            catch
            {/*
                lbl_mensagem.Text = "ERRO NO ENVIO DE EMAIL ENVIADO";
                lbl_mensagem.Visible = true;*/
            }
        }

        protected void grd_ConsultasProximas_SelectedIndexChanged(object sender, EventArgs e)
        {
            string cellValue = grd_ConsultasProximas.Rows[grd_ConsultasProximas.SelectedRow.RowIndex].Cells[3].Text;

        }
    }
}