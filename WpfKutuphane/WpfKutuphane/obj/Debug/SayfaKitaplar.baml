   M S B A M L   `   `   `  ����G  CWpfKutuphane, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:WpfKutuphaneWpfKutuphane  5   	        WpfKutuphane.SayfaKitaplar   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   b ^MaterialDesignThemes.Wpf, Version=4.1.0.2556, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   
   Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5   	   &localclr-namespace:WpfKutuphane  5   	   -   5          � Title$  Kitaplar��5	   
   $	��600��6   $
��1200��6(    � 
ResizeMode$ NoResize=�65    � WindowStyle$
 None=�6K    � AllowsTransparency . 
������  � WindowStartupLocation$ CenterScreen=�6�   .��5      � $��	10,0,0,10q�6   .+�5   
   ��  �� RadiusY$ 8��6    �� RadiusX$ 8��6    
�������6,   �� 5   
   $��Assets/wp1850829.jpg��6   $��	986,0,0,0q�6.   $��UniformToFill=�6A   �� 5   
   $��	986,0,0,0q�6    J� RenderTransformOrigin$ 0.5,0.5&�6'   z�5      V� 5      .~�5      ��  �� ScaleX$ -1Q�6%   �� 5      �� 5      T� 5      5      ��5      �� 5      	 �� EndPoint$	 0.5,1&�6&   
 �� 
StartPoint$
 0.5,0&�67   .��5      �  � Color$ 	#CC935E12��6#    � Offset$ 1Q�65   � 5      $ 	#CCEA4646��6#   � 5      $ 	#CCB89128��6#   $ 0.566Q�65   5      5      �� 5   
   $��20,10,234,40q�6   .+�5       �� $��Kitaplar��6   $��Segoe UI Black)�6'   $��24(�6C   $
��0,10q�6Q   $	��Top=�6_   $
��Left=�6w   �� 5!      &   System.Windows.Controls.DataGrid  5"      -   5          Name$ 	datagrid1��5"      $
��Left=�6*   $	��418��6E   $��	10,10,0,0q�6j   $	��Top=�6}   $	��916��6�   ��6R   �� 6�   5$      �� 5&   
   -   5         ��Name$ btnEkle��5&      $��995,478,110,80q�6"   $��Center=�6:   $
��Ekle��6X   $��New Times Roman)�6g   $��15(�6�   $��85��6�   ���	#FF307CD6���	#FF307CD66�   �� 5'   
   -   5        $ 
btnGeriGel��5'      $��20,543,1102,10q�6%   $��Center=�6=   $
��Geri��6Z   $��New Times Roman)�6i   $��15(�6�   $��68��6�   ���	#CCEA4646���	#FF307CD6$
��Auto��6�   �� 5(   
   -   5        $ btnGuncelle��5(      $��1085,478,10,80q�6&   $��Center=�6>   $��	Güncelle��6\   $��New Times Roman)�6o   $��15(�6�   $��95��6�   ���	#FF307CD6���	#FF307CD66�   �� 5)   
   -   5        $ btnSil��5)      $��995,530,110,28q�6!   $��Center=�69   $	��Sil��6W   $��New Times Roman)�6e   $��15(�6�   $��85��6�   ���	#FF307CD6���	#FF307CD66�   �� 5*   
   -   5        $ 
btnTemizle��5*      $��1085,530,10,28q�6%   $��Center=�6=   $��Temizle��6[   $��New Times Roman)�6m   $��15(�6�   $��95��6�   ���	#FF307CD6���	#FF307CD66�   �� 5+   
   -   5         ��Name$ a1��5+      $
��Left=�6!   $	��400��6<   $��1002,66,0,0q�6I   $	��Top=�6^   $	��178��6v   .+�5,      �� $	��0,2q�6    �� Orientation$ 
Horizontal=�6&   .+�5-      '  !MaterialDesignThemes.Wpf.PackIcon  -	   5          Name$ IconID��5-   *      Kind$ Password=�6:   $��Center=�6J   
���   �6e   �� 5.      -
   5         ��Name$ 
txtKitapID��5.      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Kitap ID��6/   $	��158��6Y   {�.  $��5q�6w   5/      �� 51      $	��0,2q�6   $ 
Horizontal=�6&   .+�52        -   5        $ 	IconKitap��52   *   $
 Book=�6=   $��Center=�6I   
���   �6d   �� 53      -   5        $ 
txtKitapAd��53      $ 
Kitap Adı��6/   $	��158��6Z   $��5q�6f   54      �� 55      $ 
Horizontal=�6   .+�56        -   5        $ 	IconYazar��56   *   $ 
Typewriter=�6=   $��Center=�6O   
���   �6j   �� 57      -   5         ��Name$ cmbYazar��57      $ Yazar��6-   $	��154��6T   $��5q�6`   58      �� 59      $ 
Horizontal=�6   .+�5:        -   5        $ IconTur��5:   *   $ Category=�6;   $��Center=�6K   
���   �6f   �� 5;      -   5        $ cmbTur��5;      $ Kitap Türü��6+   $	��154��6W   $��5q�6c   5<      �� 5=      $ 
Horizontal=�6   .+�5>        -   5        $ IconSayfaSayisi��5>   *   $
 Plus=�6C   $��Center=�6O   
���   �6j   �� 5?      -   5        $ txtSayfaSayisi��5?      $ Sayfa Sayısı��62   $	��154��6`   $��5q�6l   5@      �� 5A      $ 
Horizontal=�6   .+�5B        -   5        $ IconYayinEvi��5B   *   $ Publish=�6@   $��Center=�6O   
���   �6j   �� 5C      -   5        $ txtYayinEvi��5C      $ 	Yayınevi��6/   $	��155��6Y   $��5q�6e   5D      �� 5E      $ 
Horizontal=�6   $	��175��62   .+�5F        -   5        $ IconHakkinda��5F   *   $ About=�6@   $	��top=�6M   
���   �$��24��6x   $��0,17,0,0q�6�   �� 5G      -   5         ��Name$ rchHakkinda��5G      $ 	Hakkında��63   $	��158��6]   $��
10,10,10,0q�6i   5H      5I      5K      5L      