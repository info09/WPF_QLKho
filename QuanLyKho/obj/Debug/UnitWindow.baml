   M S B A M L   `   `   `  ����D  @QuanLyKho, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:QuanLyKho.KhoUserControlQuanLyKho.KhoUserControl  5   	   %clr-namespace:QuanLyKho	QuanLyKho  5   	       QuanLyKho.UnitWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   5uc&clr-namespace:QuanLyKho.KhoUserControl     5   	   U QMaterialDesignThemes.Wpf, Version=2.6.0.325, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   #localclr-namespace:QuanLyKho  5   	   -   5          �Name$  window��5   	      MaterialDesignBody#���   5	   	   $��Regular"�5
   	   $��13(�5      &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5   	      TextRenderingMode$
 Auto=�5        MaterialDesignPaper#���  5   	     MaterialDesignFont#���  5       � 
ResizeMode$ NoResize=�5   	    � WindowStyle$
 None=�5   	    � WindowStartupLocation$ CenterScreen=�5   	    
 UnitVM � DataContext# [ 5   	    � Title$ Đơn vị đo��5   	   $	��500��6   $	��400��6(   .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   6,   �� 5      6   .+�5   
   � $��0��6   .+�5      +   %QuanLyKho.KhoUserControl.ControlBarUC  
	 � Tag	 6   �� *Title+
 �� ElementName$
 window��6K   5       � 5"   
   $��1��6    5#      �� 5$      $
��auto �6    60   �� 5%      $
��auto �6    60   �� 5&      6"   .+�5*      #  MaterialDesignThemes.Wpf.Card  $��0��6"   $��5q�6/   .��5+      � .+�5,      �� $��5q�50      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Tên đơn vị đo��51       % !MaterialDesignFloatingHintTextBox#��[ 52      $��Center=�53      ��5-      �� *displayName+ �� UpdateSourceTrigger$ PropertyChanged=� �� Mode$ TwoWay=�53      54      55        57      $��1��6"   $��5q�6/   .��58      � .+�59      �� $��Thêm��6<   $��5q�6K   $	��100��6V   ��6   �� *
AddCommand+6V   �� 5:      $��Sửa��6?   $��5q�6M   $	��100��6X   ��6   �� *UpdateCommand+6X   �� 5;      $
��Xóa��6?   $��5q�6M   $	��100��6X   ��6   �� *DeleteCommand+6X   5<      5=        5?      $��2��6"   $��5q�6/   $��Stretch=�6:   .��5@      �� $
��Auto=�6   .��5A      �� ��6   �� *
unitList+$ TwoWay=�$ PropertyChanged=� �� SelectedItem 6r   �� *selectedItem+$ TwoWay=� �� View 5B      �� 5C      .P�5D   "   �� $��Id��61    �� DisplayMemberBinding 6=   �� *Id+�� 5E   "   $��Tên đơn vị đo��61    6H   �� *DisplayName+5F      5H      5I      5J      5K      5L      5M      