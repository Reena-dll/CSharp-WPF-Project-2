   M S B A M L   `   `   `  ����G  CWpfKutuphane, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:WpfKutuphaneWpfKutuphane  5   	       WpfKutuphane.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   b ^MaterialDesignThemes.Wpf, Version=4.1.0.2556, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5   	   &localclr-namespace:WpfKutuphane  5   	     � Title$  Giriş��5	   
   $	��400��6   $	��600��6%    � 
ResizeMode$ NoResize=�61    � WindowStyle$
 None=�6G    � AllowsTransparency . 
������  � WindowStartupLocation$ CenterScreen=�6�   .��5      � .+�5   
   ��  �� RadiusY$ 8��6    �� RadiusX$ 8��6    
�������6,   �� 5   
   $��Assets/wp1850829.jpg��6   $��	310,0,0,0q�6.   $��UniformToFill=�6A   �� 5   
   $��	310,0,0,0q�6   ��5      �� 5       �� EndPoint$ 0.5,1&�6&    �� 
StartPoint$ 0.5,0&�67   .��5      � 	 � Color$	 	#CC935E12��6#   
 � Offset$
 1Q�65   � 5      $	 	#CCEA4646��6#   � 5      $	 	#CCB89128��6#   $
 0.566Q�65   5      5      �� 5   
   $��20,10,290,10q�6   .+�5      �� $��Giriş��6   $��Segoe UI Black)�6$   $��24(�6@   $
��0,10q�6N   $	��Top=�6\   $
��Left=�6t   �� 5       �� Orientation$ 
Horizontal=�6   .+�5      �� $
��Left=�6   $	��Top=�67   $
��Wrap=�6O   ���#707070�� 6y   $�Hesabınız yok mu? ��6}   6�   �� 5      -   5         ��Name$ txtHesap��5      $
��Left=�6/   $	��Top=�6J   $
��Wrap=�6b   ���	#FF2468AC�� 6�   $�Hesap Oluştur��6  6  5      �� 5      $
��Left=�6   $	��Top=�63   $
��Wrap=�6K   ���#707070�� 6u   $!�1 dakikadan az sürecektir.��6y   6�   �� 5      $
��0,15q�6   $ 
Horizontal=�6'   .+�5      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Account=�6*   $��Center=�69   ���#7070706T   �� 5       -   5         ��Name$ txtMail��5       )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Gmail��6+   $	��250��6R   $��5q�6^   5!      �� 5"      $ 
Horizontal=�6   .+�5#        $	 Key=�6*   $��Center=�65   ���#7070706P   G� 5$      -   5         G�Name$ txtSifre��5$      $ Şifre��60   $	��250��6W   $��5q�6c   5%      �� 5'      -   5        $��95,35,91,35q�5'      $��Center=�6*   $��
Giriş Yap��6G   $��New Times Roman)�6[   $��15(�6x   $	��104��6�   ���	#FF307CD6���	#FF307CD66�   5)      �� 5*   
   $��310,50,0,50q�6   .+�5+      �� $��Kütüphane��6   
�������$��Center=�6<   $��48(�6Y   $��Champagne & Limousines)�6g   $
��Bold"�6�   �� 5,      $U��OKitap okumayan bir kimsenin, okuma bilmeyene karşı bir üstünlüğü yoktur.��6   
�������$��Center=�6{   $	��280��6�   $��24(�6�   $��Champagne & Limousines)�6�   $
��Wrap=�6�    �� TextAlignment$ Center=�6�   $��0,50,0,0q�6  �� 5-      $��
Mark Twain��6   
�������$��18(�6=   $��Champagne & Limousines)�6K   $
��Wrap=�6s   $ Right=�6�   $��10q�6�   5.      �� 5/   
   -   5         ��Name$ btnCikis��5/      $��20,358,512,10q�6#   $��Center=�6:   $��	Çıkış��6W   $��New Times Roman)�6g   $��15(�6�   $��68��6�   ���	#CCEA4646���	#FF307CD6$
��Auto��6�   50      51      