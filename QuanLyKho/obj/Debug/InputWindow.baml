   M S B A M L   `   `   `  ����D  @QuanLyKho, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:QuanLyKho	QuanLyKho  5   	   C&clr-namespace:QuanLyKho.KhoUserControlQuanLyKho.KhoUserControl  5	   	       QuanLyKho.InputWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:QuanLyKho     5   	   5uc&clr-namespace:QuanLyKho.KhoUserControl     5	   	   U QMaterialDesignThemes.Wpf, Version=2.6.0.325, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5
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
   Hint$
 Tên vật tư��5.       % !MaterialDesignFloatingHintTextBox#��[ 5/      $��Center=�50      ��5,      �� *ObjectDisplayName+ �� UpdateSourceTrigger$ PropertyChanged=�50      (  "System.Windows.Controls.DatePicker  53      $	��100��55      $��5 5 15 5q�56      $
 Ngày nhập��57       ( $MaterialDesignFloatingHintDatePicker#��[ 58         SelectedDate 54      �� *	DateInput+$ PropertyChanged=�58      �� 5:      $��5 5 15 5q�5<      $
 Số lượng��5=      #��[ 5>      $��Center=�5?      ��5;      �� *Count+$ PropertyChanged=�5?      �� 5A      $��5 5 15 5q�5C      $
 Giá nhập��5D      #��[ 5E      $��Center=�5F      ��5B      �� *
PriceInput+$ PropertyChanged=�5F      �� 5H      $��5 5 15 5q�5J      $
 Giá xuất��5K      #��[ 5L      $��Center=�5M      ��5I      �� *PriceOutput+$ PropertyChanged=�5M      �� 5O      $��5 5 15 5q�5Q      $
 Trạng thái nhập��5R      #��[ 5S      $��Center=�5T      ��5P      �� *Status+$ PropertyChanged=�5T      5W      5X        5Z      $��1��6"   $��5q�6/   .��5[      � .+�5\      �� $��Thêm��6<   $��5q�6K   $	��120��6V   ��6   �� *
AddCommand+6V   �� 5]      $��Sửa��6?   $��5q�6M   $	��120��6X   ��6   �� *UpdateCommand+6X   �� 5^      $
��Xóa��6?   $��5q�6M   $	��120��6X   ��6   �� *DeleteCommand+6X   5`      5a        5c      $��2��6"   $��5q�6/   $��Stretch=�6:   .��5d      �� $
��Auto=�6   .��5e      �� ��6   �� *List+ �� SelectedItem 6<   �� *SelectedItem+ �� Mode$ OneWayToSource=� �� View 5f      �� 5g      .P�5h   "   �� $��	Vật tư��61    �� DisplayMemberBinding 6A   �� *Object.DisplayName>+�� 5i   "   $��Ngày nhập��61    6D   �� *Input.DateInput+�� 5j   "   $��Số lượng��61    6C   �� *Count+�� 5k   "   $��Giá nhập��61    6C   �� *
InputPrice+�� 5l   "   $��Giá xuất��61    6C   �� *OutputPrice+�� 5m   "   $��Trạng thái��61    6E   �� *Status+5n      5p      5q      5r      5s      5t      5u      