   M S B A M L   `   `   `  ����D  @QuanLyKho, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:QuanLyKho	QuanLyKho  5   	   C&clr-namespace:QuanLyKho.KhoUserControlQuanLyKho.KhoUserControl  5	   
       QuanLyKho.CustomerWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:QuanLyKho     5   	   5uc&clr-namespace:QuanLyKho.KhoUserControl     5	   
   U QMaterialDesignThemes.Wpf, Version=2.6.0.325, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5
   	   -   5          �Name$  window��5   	      MaterialDesignBody#���   5   	   $��Regular"�5   	   $��13(�5      &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5   	      TextRenderingMode$
 Auto=�5        MaterialDesignPaper#���  5   	     MaterialDesignFont#���  5       � 
ResizeMode$ NoResize=�5   	    � WindowStyle$
 None=�5   	    � WindowStartupLocation$ CenterScreen=�5   	    � Title$ Khách hàng��5   	   $	��500��6   $	��700��6)   .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   6,   �� 5      6   .+�5   
   � $��0��6   .+�5      +   %QuanLyKho.KhoUserControl.ControlBarUC  
 � Tag 6   �� *Title+	 �� ElementName$	 window��6K   5      � 5!   
   $��1��6    5"      �� 5#      $
��auto �6    60   �� 5$      $
��auto �6    60   �� 5%      6"   .+�5)      #  MaterialDesignThemes.Wpf.Card  $��0��6"   $��5q�6/   .��5*      � $��0 0 0 10q�6   .+�5+      �� $��5 5 15 5q�5-      )  #MaterialDesignThemes.Wpf.HintAssist
   Hint$
 Tên khách hàng��5.       % !MaterialDesignFloatingHintTextBox#��[ 5/      $��Center=�50      ��5,      �� *DisplayName+ �� UpdateSourceTrigger$ PropertyChanged=�50      �� 51      $��5 5 15 5q�53      $
 Địa chỉ��54      #��[ 55      $��Center=�56      ��52      �� *	Address+$ PropertyChanged=�56      �� 57      $��5 5 15 5q�59      $
 Điện thoại��5:      #��[ 5;      $��Center=�5<      ��58      �� *Phone+$ PropertyChanged=�5<      �� 5=      $��5 5 15 5q�5?      $
 Email��5@      #��[ 5A      $��Center=�5B      ��5>      �� *Email+$ PropertyChanged=�5B      �� 5C      $��5 5 15 5q�5E      $
 Thông tin thêm��5F      #��[ 5G      $��Center=�5H      ��5D      �� *
MoreInfo+$ PropertyChanged=�5H      (  "System.Windows.Controls.DatePicker  5I      $	��100��5K      $��5 5 15 5q�5L      $
 Ngày hợp tác��5M       ( $MaterialDesignFloatingHintDatePicker#��[ 5N         SelectedDate 5J      �� *ContractDate+$ PropertyChanged=�5N      5O      5P        5R      $��1��6"   $��5q�6/   .��5S      � .+�5T      �� $��Thêm��6<   $��5q�6K   $	��100��6V   ��6   �� *
AddCommand+6V   �� 5U      $��Sửa��6?   $��5q�6M   $	��100��6X   ��6   �� *UpdateCommand+6X   �� 5V      $
��Xóa��6?   $��5q�6M   $	��100��6X   ��6   �� *DeleteCommand+6X   5W      5X        5Z      $��2��6"   $��5q�6/   $��Stretch=�6:   .��5[      �� $
��Auto=�6   .��5\      �� ��6   �� *List+ �� SelectedItem 6<   �� *SelectedItem+ �� Mode$ OneWayToSource=� �� View 5]      �� 5^      .P�5_   "   �� $��Id��61    �� DisplayMemberBinding 6=   �� *Id+�� 5`   "   $��Tên khách hàng��61    6I   �� *DisplayName+�� 5a   "   $��Địa chỉ��61    6B   �� *	Address+�� 5b   "   $��Điện thoại��61    6E   �� *Phone+�� 5c   "   $��Email��61    6@   �� *Email+�� 5d   "   $��Thông tin thêm��61    6I   �� *
MoreInfo+�� 5e   "   $��Ngày hợp tác��61    6G   �� *ContractDate+5f      5h      5i      5j      5k      5l      5m      