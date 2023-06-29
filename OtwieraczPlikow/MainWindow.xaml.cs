using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.DirectoryServices;
using System.IO;

namespace OtwieraczPlikow
{

    public partial class MainWindow : Window
    {
     

        static public string path;
        public MainWindow()
        {
            InitializeComponent();
            
        }

        object start = "KONKUTER";

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            foreach (string s in Directory.GetLogicalDrives())
            {
                TreeViewItem item = new TreeViewItem();
                item.Header = s;
                item.Tag = s;
                item.FontWeight = FontWeights.Normal;
                item.Items.Add(start);
                item.Expanded += new RoutedEventHandler(folder_Expanded);
                Explorer.Items.Add(item);
            }
        }

        private void folder_Expanded(object sender, RoutedEventArgs e)
        {

            TreeViewItem item = (TreeViewItem)sender;             

            if (item.Items.Count == 1 && item.Items[0] == start)
            {
                item.Items.Clear();
                try
                {
                    foreach (string s in Directory.GetDirectories(item.Tag.ToString()))
                    {
                        TreeViewItem subitem = new TreeViewItem();
                        subitem.Header = s.Substring(s.LastIndexOf("\\") + 1);
                        subitem.Tag = s;
                        subitem.FontWeight = FontWeights.Normal;
                        subitem.Items.Add(start);
                        subitem.Expanded += new RoutedEventHandler(folder_Expanded);
                        item.Items.Add(subitem);
                    }

                    foreach(string s in Directory.GetFiles(item.Tag.ToString()))
                    {
                        TreeViewItem subitem = new TreeViewItem();
                        subitem.Header = s.Substring(s.LastIndexOf("\\") + 1);
                        subitem.Tag = s;
                        subitem.FontWeight = FontWeights.Bold;
                        subitem.Items.Add(start);
                        subitem.Expanded += new RoutedEventHandler(folder_Expanded);
                        item.Items.Add(subitem);
                    }
                }
                catch (Exception) { }
            }
        }

        private void Zamknij(object sender, RoutedEventArgs e)
        {
            Close();
        }

        private void Usun(object sender, RoutedEventArgs e)
        {
           string a = GetFullPath(Explorer.SelectedItem as TreeViewItem);
            if (a != "")
            {
                if (File.Exists(a))
                    System.IO.File.Delete(a);
                if(Directory.Exists(a))
                    System.IO.Directory.Delete(a, true);

            }
            Explorer.UpdateLayout();
            Explorer.Items.Refresh();
        }

        private void Openfile(object sender, RoutedEventArgs e)
        {
            string b = GetFullPath(Explorer.SelectedItem as TreeViewItem);
            if (b != "")
            {
                if(File.Exists(b))
                {
                    string a = System.IO.File.ReadAllText(b.ToString());
                    text_block.Text = a;
                }
                    
            }
        }

        public string GetFullPath(TreeViewItem node)
        {
            if (node == null)
                throw new ArgumentNullException();

            var result = Convert.ToString(node.Header);

            for (var i = GetParentItem(node); i != null; i = GetParentItem(i))
                result = i.Header + "\\" + result;

            return result;
        }

        static TreeViewItem GetParentItem(TreeViewItem item)
        {
            for (var i = VisualTreeHelper.GetParent(item); i != null; i = VisualTreeHelper.GetParent(i))
                if (i is TreeViewItem)
                    return (TreeViewItem)i;

            return null;
        }

        private void explorer_SelectedItemChanged(object sender, RoutedPropertyChangedEventArgs<object> e)
        {
            
            Openfile(sender, e);
            string a = GetFullPath(Explorer.SelectedItem as TreeViewItem);
            FileInfo info = new FileInfo(a);
            stan.Content = "ReadOnly: " + info.IsReadOnly;
            beta.Content = info.Attributes.ToString();
        }

        private void MenuItem_Click(object sender, RoutedEventArgs e)
        {
            //Nic
        }
        private void Dodaj(object sender, RoutedEventArgs e)
        {
            path = GetFullPath(Explorer.SelectedItem as TreeViewItem);
            dodawacz doda = new dodawacz();
            doda.Show();
        }
    }
}
