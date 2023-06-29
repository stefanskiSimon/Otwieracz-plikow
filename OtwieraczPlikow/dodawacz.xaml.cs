using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace OtwieraczPlikow
{
    /// <summary>
    /// Interaction logic for dodawacz.xaml
    /// </summary>
    public partial class dodawacz : Window
    {
        public dodawacz()
        {
            InitializeComponent();
            path__.Content = MainWindow.path;
        }

        private void DialogCancel_Click(object sender, RoutedEventArgs e)
        {
            Close();
                
        }

        private void direr_Checked(object sender, RoutedEventArgs e)
        {
            fileR.IsChecked = false;
        }

        private void fileR_Checked(object sender, RoutedEventArgs e)
        {
            direr.IsChecked = false;
        }

        private void DialogOk_Click(object sender, RoutedEventArgs e)
        {
            string name = txtAnswer.Text;
            if ((fileR.IsChecked.Value && Regex.IsMatch(name, @"^[\w,\s-]+\.[A-Za-z0-9_]{3}$")) 
                || (direr.IsChecked.Value && Regex.IsMatch(name, @"^[\w,\s-]")))
            {

                // Determine whether the directory exists.
                if (Directory.Exists(MainWindow.path + "\\" + name))
                {
                    txtAnswer.Text = "Exists";
                    return;
                }
                if (direr.IsChecked.Value)
                {


                    DirectoryInfo di = Directory.CreateDirectory(MainWindow.path + "\\" + name);

                }
                if (fileR.IsChecked.Value)
                {

                    File.Create(MainWindow.path + name);
                    if (rd_only.IsChecked.Value)
                        File.SetAttributes(MainWindow.path + "\\" + name, FileAttributes.ReadOnly);
                    if (arch1.IsChecked.Value)
                        File.SetAttributes(MainWindow.path + "\\" + name, FileAttributes.Archive);
                    if (hidn.IsChecked.Value)
                        File.SetAttributes(MainWindow.path + "\\" + name, FileAttributes.Hidden);
                    if (sys.IsChecked.Value)
                        File.SetAttributes(MainWindow.path + "\\" + name, FileAttributes.System);
                }
                this.Close();

            }
            else
            {
                txtAnswer.Text = "Nie poprawna nazwa folderu";
            }
        }
    }
}
