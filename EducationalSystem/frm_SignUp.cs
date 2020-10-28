using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using SmartLinli.DatabaseDevelopement;

namespace EducationalSystem
{
    public partial class frm_SignUp : Form
    {
        public frm_SignUp()
        {
            InitializeComponent();
        }

        private void btn_Submit_Click(object sender, EventArgs e)
        {
            string commandText =
                $@"INSERT tb_Student(NO, Password)
                   VALUES
                  ('{txt_Name.Text}', '{txt_Password.Text}'); ";
        }
        SqlHelper sqlHelper = new SqlHelper();
    }
}
