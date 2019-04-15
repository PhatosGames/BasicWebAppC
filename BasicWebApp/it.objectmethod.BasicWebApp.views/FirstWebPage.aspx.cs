using BasicWebApp.it.objectmethod.BasicWebApp.Classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BasicWebApp
{
    public partial class FirstWebPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridViewClienti.DataSource = Statistiche.SalesByYear();
            GridViewClienti.DataBind();
        }
        public void MsgBox(String ex, Page pg, Object obj)
        {
            string s = "<SCRIPT language='javascript'>alert('" + ex.Replace("\r\n", "\\n").Replace("'", "") + "'); </SCRIPT>";
            Type cstype = obj.GetType();
            ClientScriptManager cs = pg.ClientScript;
            cs.RegisterClientScriptBlock(cstype, s, s.ToString());
        }
        protected void btn_piu_Click(object sender, EventArgs e)
        {
            txt_simbolo.Text = " +";
        }

        protected void btn_meno_Click(object sender, EventArgs e)
        {
            txt_simbolo.Text = " -";
        }

        protected void btn_diviso_Click(object sender, EventArgs e)
        {
            txt_simbolo.Text = " :";
        }

        protected void btn_per_Click(object sender, EventArgs e)
        {
            txt_simbolo.Text = " x";
        }

        protected void btn_risultato_Click(object sender, EventArgs e)
        {
          
            if (string.IsNullOrEmpty(txt_operatorePrimo.Text)  || string.IsNullOrEmpty(txt_operatoreSecondo.Text) 
                || string.IsNullOrEmpty(txt_simbolo.Text) )
            {
                MsgBox("Tutti i campi devono essere riempiti!", this.Page, this);
               
            }
            else
            {
                double primoOperando = Convert.ToDouble(txt_operatorePrimo.Text);
                double secondoOperando = Convert.ToDouble(txt_operatoreSecondo.Text);
                if (txt_simbolo.Text == " +")
                {
                    txt_risultato.Text = (primoOperando + secondoOperando).ToString();
                    txt_operatorePrimo.Text = txt_risultato.Text;
                }
                else if (txt_simbolo.Text == " -")
                {
                    txt_risultato.Text = (primoOperando - secondoOperando).ToString();
                    txt_operatorePrimo.Text = txt_risultato.Text;
                }
                else if (txt_simbolo.Text == " :")
                {
                    txt_risultato.Text = (primoOperando / secondoOperando).ToString();
                    txt_operatorePrimo.Text = txt_risultato.Text;
                }
                else if (txt_simbolo.Text == " x")
                {
                    txt_risultato.Text = (primoOperando * secondoOperando).ToString();
                    txt_operatorePrimo.Text = txt_risultato.Text;
                }

            }
        }
    }
}