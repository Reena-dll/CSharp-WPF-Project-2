   M S B A M L   `   `   `  ����G  CWpfKutuphane, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:WpfKutuphaneWpfKutuphane  5   	       WpfKutuphane.SayfaTurler   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   b ^MaterialDesignThemes.Wpf, Version=4.1.0.2556, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5   	   &localclr-namespace:WpfKutuphane  5   	   -   5          � Title$  SayfaTurler��5
      $	��400��6   $	��600��6,    � 
ResizeMode$ NoResize=�68    � WindowStyle$
 None=�6N    � AllowsTransparency . 
������  � WindowStartupLocation$ CenterScreen=�6�   .��5      � .+�5   
   ��  �� RadiusY$ 8��6    �� RadiusX$ 8��6    
�������6,   �� 5   
   $��Assets/wp1850829.jpg��6   $��	310,0,0,0q�6.   $��UniformToFill=�6A   �� 5   
   $��	310,0,0,0q�6   ��5      �� 5       �� EndPoint$ 0.5,1&�6&    �� 
StartPoint$ 0.5,0&�67   .��5      � 	 � Color$	 	#CC935E12��6#   
 � Offset$
 1Q�65   � 5      $	 	#CCEA4646��6#   � 5      $	 	#CCB89128��6#   $
 0.566Q�65   5      5      �� 5   
   $��20,10,290,10q�6   .+�5      �� $��Kitap Türleri��6   $��Segoe UI Black)�6,   $��24(�6H   $
��0,10q�6V   $	��Top=�6d   $
��Left=�6|   �� 5      5      �� 5   
   $��310,50,0,50q�6   �� 5   
   -   5         ��Name$ btnGeri��5      $��20,358,512,10q�6"   $��Center=�69   $
��Geri��6V   $��New Times Roman)�6e   $��15(�6�   $��68��6�   ���	#CCEA4646���	#FF307CD6$
��Auto��6�   &   System.Windows.Controls.DataGrid  5    
   -   5          Name$ 	datagrid1��5       $
��Left=�6&   $	��237��6A   $��	10,88,0,0q�6f   $	��Top=�6y   $	��241��6�   ��6N   �� 6�   �� 5!   
   -   5         ��Name$ a1��5!      $��Center=�6!   $	��300��6?   $��348,50,10,0q�6L   $	��Top=�6a   $	��242��6y   .+�5"      �� $	��0,2q�6    �� Orientation$ 
Horizontal=�6&   .+�5#      '  !MaterialDesignThemes.Wpf.PackIcon  -   5          Name$ IconID��5#   *      Kind$ Password=�6:   $��Center=�6J   
���   �6e   �� 5$      -   5         ��Name$ txtTurID��5$      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Tür ID��6-   $	��158��6U   {�.  $��5q�6s   5%      �� 5&      $ 
Horizontal=�6   .+�5'        -   5        $ 	IconYazar��5'   *   $ 
Typewriter=�6=   $��Center=�6O   
���   �6j   �� 5(      -   5        $ txtKitapTur��5(      $ Kitap Türü��6/   $	��154��6[   $��5q�6g   5*      �� 5+      $	��213��6   .+�5,      �� -	   5        $ btnEkle��5,      $��10q�6*   $��Center=�67   $
��Ekle��6U   $��New Times Roman)�6d   $��15(�6�   $��95��6�   ���	#FF307CD6���	#FF307CD66�   �� 5-      -
   5        $ btnGuncelle��5-      $��10q�6/   $��Center=�6;   $��	Güncelle��6Y   $��New Times Roman)�6l   $��15(�6�   $��95��6�   ���	#FF307CD6���	#FF307CD66�   �� 5.      -   5        $ 
btnTemizle��5.      $��10q�6.   $��Center=�6:   $��Temizle��6X   $��New Times Roman)�6j   $��15(�6�   $��95��6�   ���	#FF307CD6���	#FF307CD66�   5/      52      54      55      