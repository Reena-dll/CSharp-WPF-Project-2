   M S B A M L   `   `   `  ����G  CWpfKutuphane, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:WpfKutuphaneWpfKutuphane  5   	       WpfKutuphane.KayitOl   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:WpfKutuphane     5   	   b ^MaterialDesignThemes.Wpf, Version=4.1.0.2556, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   -   5          � Title$  	Kayıt Ol��5	   	   $	��400��5   	   $	��600��6    � 
ResizeMode$ NoResize=�6"    � WindowStyle$
 None=�68    � AllowsTransparency . 
������  � WindowStartupLocation$ CenterScreen=�6~   .��5      � .+�5   
   ��  �� RadiusY$ 8��6    �� RadiusX$ 8��6    
�������6,   �� 5   
   $��Assets/wp1850829.jpg��6   $��	310,0,0,0q�6.   $��UniformToFill=�6A   �� 5   
   $��	310,0,0,0q�6   ��5      �� 5       �� EndPoint$ 0.5,1&�6&    �� 
StartPoint$ 0.5,0&�67   .��5      � 	 � Color$	 	#CC935E12��6#   
 � Offset$
 1Q�65   � 5      $	 	#CCEA4646��6#   � 5      $	 	#CCB89128��6#   $
 0.566Q�65   5      5      �� 5   
   $��20,10,290,10q�6   .+�5      �� $��	Kayıt Ol��6   $��Segoe UI Black)�6'   $��24(�6C   $
��0,10q�6Q   $	��Top=�6_   $
��Left=�6w   �� 5      $	��0,2q�6    �� Orientation$ 
Horizontal=�6&   .+�5      '  !MaterialDesignThemes.Wpf.PackIcon  -   5          Name$ IconUser��5   *      Kind$ Account=�6<   $��Center=�6K   ���#7070706f   �� 5      -   5         ��Name$ txtAd��5      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Adınız��6*   $	��250��6R   $��5q�6^   5      �� 5      $ 
Horizontal=�6   .+�5         -   5        $ 	IconUser2��5    *   $ Account=�6=   $��Center=�6L   ���#7070706g   �� 5!      -   5        $ txtSoyad��5!      $ Soyadınız��6,   $	��250��6W   $��5q�6c   5"      �� 5#      $ 
Horizontal=�6   .+�5$        -   5        $ IconTel��5$   *   $ 	Telephone=�6;   $��Center=�6L   ���#7070706g   �� 5%      -   5        $ 
txtTelefon��5%      $ Telefon��6.   $	��250��6W   $��5q�6c   5&      �� 5'      $ 
Horizontal=�6   .+�5(        -   5        $ IconHome��5(   *   $
 Home=�6<   $��Center=�6H   ���#7070706c   �� 5)      -	   5        $ txtAdres��5)      $ Adres��6,   $	��250��6S   $��5q�6_   5*      �� 5+      $ 
Horizontal=�6   .+�5,        -
   5        $ IconMail��5,   *   $
 Mail=�6<   $��Center=�6H   ���#7070706c   �� 5-      -   5        $ txtMail��5-      $
 Mail��6+   $	��250��6Q   $��5q�6]   5.      �� 5/      $ 
Horizontal=�6   .+�50        -   5        $ IconPassword1��50   *   $ Password=�6A   $��Center=�6Q   ���#7070706l   G� 51      -   5         G�Name$ txtSifre��51      $ Şifre��60   $	��250��6W   $��5q�6c   52      �� 53      $ 
Horizontal=�6   .+�54        -   5        $ IconPassword2��54   *   $ Password=�6A   $��Center=�6Q   ���#7070706l   G� 55      -   5        $ txtSifreTekrar��55      $ Şifre Tekrar��66   $	��250��6d   $��5q�6p   56      �� 59      -   5        $��10,10,-150,0q�59      $��Center=�6+   $��	Kayıt Ol��6H   $��New Times Roman)�6[   $��15(�6x   $	��104��6�   ���	#FF307CD6���	#FF307CD66�   5;      �� 5<   
   $��310,50,0,50q�6   .+�5=      �� $��Kütüphane��6   
�������$��Center=�6<   $��48(�6Y   $��Champagne & Limousines)�6g   $
��Bold"�6�   �� 5>      $=��7Kitapsız yaşamak; kör, sağır, dilsiz yaşamaktır.��6   
�������$��Center=�6c   $	��280��6�   $��24(�6�   $��Champagne & Limousines)�6�   $
��Wrap=�6�    �� TextAlignment$ Center=�6�   $��0,50,0,0q�6�   �� 5?      $��L. Annaeus Seneca��6   
�������$��18(�6D   $��Champagne & Limousines)�6R   $
��Wrap=�6z   $ Right=�6�   $��10q�6�   5@      �� 5A   
   -   5         ��Name$ 
btnGeriGel��5A      $��20,358,512,10q�6%   $��Center=�6<   $
��Geri��6Y   $��New Times Roman)�6h   $��15(�6�   $��68��6�   ���	#CCEA4646���	#FF307CD6$
��Auto��6�   5B      5C      