   M S B A M L   `   `   `  ����D  @QuanLyKho, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:QuanLyKho	QuanLyKho  5   	   C&clr-namespace:QuanLyKho.KhoUserControlQuanLyKho.KhoUserControl  5	   	       QuanLyKho.UserWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:QuanLyKho     5   	   5uc&clr-namespace:QuanLyKho.KhoUserControl     5	   	   U QMaterialDesignThemes.Wpf, Version=2.6.0.325, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5
   	   -   5          �Name$  window��5   	      MaterialDesignBody#���   5   	   $��Regular"�5   	   $��13(�5      &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5   	      TextRenderingMode$
 Auto=�5        MaterialDesignPaper#���  5   	     MaterialDesignFont#���  5       � 
ResizeMode$ NoResize=�5   	    � WindowStyle$
 None=�5   	    � WindowStartupLocation$ CenterScreen=�5   	    � Title$ 	Vật tư��5   	   $	��500��6   $	��700��6%   .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   6,   �� 5      6   .+�5   
   � $��0��6   .+�5      +   %QuanLyKho.KhoUserControl.ControlBarUC  
 � Tag 6   �� *Title+	 �� ElementName$	 window��6K   5      � 5!   
   $��1��6    5"      �� 5#      $
��auto �6    60   �� 5$      $
��auto �6    60   �� 5%      6"   .+�5)      #  MaterialDesignThemes.Wpf.Card  $��0��6"   $��5q�6/   .��5*      � $��0 0 0 10q�6   .+�5+      �� $��5 5 15 5q�5-      )  #MaterialDesignThemes.Wpf.HintAssist
   Hint$
 Tên đăng nhập��5.       % !MaterialDesignFloatingHintTextBox#��[ 5/      $��Center=�50      ��5,      �� *
UserName+ �� UpdateSourceTrigger$ PropertyChanged=�50      �� 51      $��5 5 15 5q�6   $
 Quyền��6�    �� 
IsEditable .  & "MaterialDesignFloatingHintComboBox#��[ 6�   ��61   �� *Role+ �� SelectedItem 6N   �� *SelectedRole+ �� Mode$ TwoWay=�$ PropertyChanged=�6  �� 53      $��5 5 15 5q�55      $
 Tên hiển thị��56      #��[ 57      $��Center=�58      ��54      �� *DisplayName+$ PropertyChanged=�58      5;      5<        5>      $��1��6"   $��5q�6/   .��5?      � .+�5@      �� $��Thêm��6<   $��5q�6K   $	��120��6V   ��6   �� *
AddCommand+6V   �� 5A      $��Sửa��6?   $��5q�6M   $	��120��6X   ��6   �� *UpdateCommand+6X   �� 5B      $
��Xóa��6?   $��5q�6M   $	��120��6X   ��6   �� *DeleteCommand+6X   �� 5C      $��Đổi mật khẩu��6G   $��5q�6^   $	��120��6i   ��6   �� *ChangePasswordCommand+6i   5D      5E        5G      $��2��6"   $��5q�6/   $��Stretch=�6:   .��5H      �� $
��Auto=�6   .��5I      �� ��6   �� *List+ 6<   �� *SelectedItem+$ OneWayToSource=� �� View 5J      �� 5K      .P�5L   "   �� $��Id��61    �� DisplayMemberBinding 6=   �� *Id+�� 5M   "   $��Tên đăng nhập��61    6H   �� *
UserName+�� 5N   "   $��Chức vụ��61    6B   �� *Role.DisplayName+�� 5O   "   $��Tên hiển thị��61    6G   �� *DisplayName+5P      5R      5S      5T      5U      5V      5W      