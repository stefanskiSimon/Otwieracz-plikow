   M S B A M L   `   `   `  ����J  FOtwieraczPlikow, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:OtwieraczPlikowOtwieraczPlikow  5   	        OtwieraczPlikow.MainWindow   5   	   W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:OtwieraczPlikow     5   	   -   5          �Name$  window��5   	   
���   � � Title$ Otwieracz Plików��5   	   $	��450��6"   $	��800��6/   .��5	      � $��
10,0,10,10q�6   
���   � � ColumnDefinitions 5
   
   �� 5      $	��65* �6   �� 5      $��6* �6   �� 5      $
��124* �6    � RowDefinitions 5   
   �� 5      $��* �6   �� 5      $��8* �6   .+�5   
   c� -   5         c�Name$
 menu��5      $��0��6    $	��Top=�60   $�� ��6H   $��3��6R   $��37��6f   $��
0,10,312,0q�6r   
����� �.@�5      o� -   5         o�Name$ File_��5      $	��337��6"   
����� �.@�5      m� -   5        $
��File��5      
����ح�.@�5      m� $��Otworz��6   
����ح�6H   m� 5      -   5        $��Wyjdz��5      
����ح�6W   5      �� 5      -   5         ��Name$
 beta��5      $�� ��6&   $	��140��61   
����ح�6=   �� 5      -   5        $
 stan��5      $��
DoOdczytu:��6&   $��25��6;    J� RenderTransformOrigin$ 0.497,0.542&�6G   $	��130��6k   
����ح�6w   5      5      R� 5   
   -   5         R�Name$ Explorer��5      $��0,47,0,0q�6%   $��0��67   $��2��6z   
����ح�	 � ContextMenu	 5      �� 5      .@�5       m� -	   5        $��Dodaj��5       6?   m� 5!      -
   5        $
��Usun��5!      6<   5"      5$      �� 5%   
   $��1��6   $
��Auto=�6(   $��2��6M   $��0,47,0,0q�6a   $��2��6s   
����ح�.��5&      �� .+�5'      �� -   5        
 ��Name$
 
text_block��5'      
����ح�60   �� 5(      �� 5)      
������6   5*      5+      �� 5,   
   $��2��6   $��Label��6    $
��Left=�60   $��
548,41,0,0q�6K   $��1��6_   $	��Top=�6l   5-      51      