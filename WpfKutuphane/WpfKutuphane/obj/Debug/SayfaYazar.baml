   M S B A M L   `   `   `  ����G  CWpfKutuphane, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:WpfKutuphaneWpfKutuphane  5   	       WpfKutuphane.SayfaYazar   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   b ^MaterialDesignThemes.Wpf, Version=4.1.0.2556, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5   	   &localclr-namespace:WpfKutuphane  5   	   -   5          � Title$  Yazarlar��5	   	   $	��600��6   $
��1200��6'    � 
ResizeMode$ NoResize=�64    � WindowStyle$
 None=�6J    � AllowsTransparency . 
������  � WindowStartupLocation$ CenterScreen=�6�   .��5      � $��	10,0,0,10q�6   .+�5   
   ��  �� RadiusY$ 8��6    �� RadiusX$ 8��6    
�������6,   �� 5   
   $��Assets/wp1850829.jpg��6   $��	986,0,0,0q�6.   $��UniformToFill=�6A   �� 5   
   $��	986,0,0,0q�6    J� RenderTransformOrigin$ 0.5,0.5&�6'   z�5      V� 5      .~�5      ��  �� ScaleX$ -1Q�6%   �� 5      �� 5      T� 5      5      ��5      �� 5      	 �� EndPoint$	 0.5,1&�6&   
 �� 
StartPoint$
 0.5,0&�67   .��5      �  � Color$ 	#CC935E12��6#    � Offset$ 1Q�65   � 5      $ 	#CCEA4646��6#   � 5      $ 	#CCB89128��6#   $ 0.566Q�65   5      5      �� 5   
   $��20,10,234,40q�6   .+�5       �� $��Yazarlar��6   $��Segoe UI Black)�6'   $��24(�6C   $
��0,10q�6Q   $	��Top=�6_   $
��Left=�6w   �� 5!      &   System.Windows.Controls.DataGrid  5"      -   5          Name$ 	datagrid1��5"      $
��Left=�6*   $	��418��6E   $��	10,10,0,0q�6j   $	��Top=�6}   $	��916��6�   ��6R   �� 6�   5$      �� 5&   
   -   5         ��Name$ btnEkle��5&      $��995,375,110,183q�6"   $��Center=�6;   $
��Ekle��6Y   $��New Times Roman)�6h   $��15(�6�   $��85��6�   ���	#FF307CD6���	#FF307CD66�   �� 5'   
   -   5        $ 
btnGeriGel��5'      $��20,543,1102,10q�6%   $��Center=�6=   $
��Geri��6Z   $��New Times Roman)�6i   $��15(�6�   $��68��6�   ���	#CCEA4646���	#FF307CD6$
��Auto��6�   �� 5(   
   -   5        $ btnGuncelle��5(      $��1085,375,10,183q�6&   $��Center=�6?   $��	Güncelle��6]   $��New Times Roman)�6p   $��15(�6�   $��95��6�   ���	#FF307CD6���	#FF307CD66�   �� 5)   
   -   5        $ btnSil��5)      $��995,428,110,130q�6!   $��Center=�6:   $	��Sil��6X   $��New Times Roman)�6f   $��15(�6�   $��85��6�   ���	#FF307CD6���	#FF307CD66�   �� 5*   
   -   5        $ 
btnTemizle��5*      $��1085,428,10,130q�6%   $��Center=�6>   $��Temizle��6\   $��New Times Roman)�6n   $��15(�6�   $��95��6�   ���	#FF307CD6���	#FF307CD66�   �� 5+   
   -   5         ��Name$ a1��5+      $
��Left=�6!   $	��309��6<   $��1002,61,0,0q�6I   $	��Top=�6^   $	��178��6v   .+�5,      �� $	��0,2q�6    �� Orientation$ 
Horizontal=�6&   .+�5-      '  !MaterialDesignThemes.Wpf.PackIcon  -	   5          Name$ IconID��5-   *      Kind$ Password=�6:   $��Center=�6J   
���   �6e   �� 5.      -
   5         ��Name$ 
txtYazarID��5.      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Yazar ID��6/   $	��158��6Y   {�.  $��5q�6w   5/      �� 50      $ 
Horizontal=�6   .+�51        -   5        $ 	IconYazar��51   *   $ 
Typewriter=�6=   $��Center=�6O   
���   �6j   �� 52      -   5        $ txtYazar��52      $ 
Yazar Adı��6,   $	��154��6W   $��5q�6c   53      �� 54      $ 
Horizontal=�6   .+�55        -   5        $ IconUlke��55   *   $
 Flag=�6<   $��Center=�6H   
���   �6c   �� 56      -   5        $ txtUlke��56      $ Ülke��6+   $	��154��6Q   $��5q�6]   57      �� 59      $ 
Horizontal=�6   $	��175��62   .+�5:        -   5        $ IconBiyografi��5:   *   $ 	Biography=�6A   $	��top=�6R   
���   �$��24��6}   $��0,17,0,0q�6�   �� 5;      -   5         ��Name$ rchBiyografi��5;      $ 	Biyografi��64   $	��158��6_   $��
10,10,10,0q�6k   5<      5=      5?      5@      