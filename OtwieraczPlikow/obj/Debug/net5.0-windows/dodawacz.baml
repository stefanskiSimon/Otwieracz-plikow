   M S B A M L   `   `   `  ����J  FOtwieraczPlikow, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:OtwieraczPlikowOtwieraczPlikow  5   	       OtwieraczPlikow.dodawacz   5   	   W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:OtwieraczPlikow     5   	   
����ح�  � Title$  Dodawacz plików��5   	   $	��400��6!   $	��400��6.   .��5
      � -   5         �Name$
 arch��5
      $��15q�6    � ColumnDefinitions 5   
   �� 5      $
��Auto �6   �� 5       � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   .+�5   
   �� -   5        $��lblQuestion��5      $��1��6#   $��0,0,0,18q�63   $��2��6E   .��6V   Name:6]   �� 5   
   -   5        $��	txtAnswer��5      $��1��6#   $	��250��63   $��
48,0,47,18q�6B   $��2��6V   �� 5   
   -   5         ��Name$ DialogOk��5   "    �� 	IsDefault$
 True��6   $��60��6K   $��19,280,291,-91q�6Y   $	��_Ok��6q   $��2��6   $��2��6�   �� 5   
   -   5        $ DialogCancel��5   "   $
 True��6   $��60��6S   $��84,280,226,-91q�6a   $��_Cancel��6y   $��2��6�   $��2��6�   	� 5   
   -   5         	�Name$ fileR��5      $
��File��6%   $��1��64   $
��Left=�6D   $��
114,10,0,0q�6_   $��2��6s   $	��Top=�6�   6�   	� 5   
   -   5        $ direr��5      $��	Directory��6%   $��1��69   $
��Left=�6I   $��	19,10,0,0q�6d   $��2��6w   $	��Top=�6�   6�   �� 5   
   -   5         ��Name$ rd_only��5      $��
ReadOnly__��6$   $��1��69   $
��Left=�6I   $��	86,72,0,0q�6d   $��2��6w   $	��Top=�6�   �� 5   
   -	   5        $ arch1��5      $��	Archive__��6"   $��1��66   $
��Left=�6F   $��	86,92,0,0q�6a   $��2��6t   $	��Top=�6�   �� 5   
   -
   5        $
 hidn��5      $��Hidden__��6!   $��1��64   $
��Left=�6D   $��
86,112,0,0q�6_   $��2��6s   $	��Top=�6�   �� 5   
   -   5        $	 sys��5      $��System__��6    $��1��63   $
��Left=�6C   $��
86,132,0,0q�6^   $��2��6r   $	��Top=�6   �� 5   
   -   5         ��Name$ path__��5      $��1��6    $�� ��60   $
��Left=�6;   $��
79,183,0,0q�6V   $��2��6j   $	��Top=�6w   5       5!      