@global_var_76cf3 = external constant [6 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_2bbd7:
  %0 = call i32 @rand()
  %1 = urem i32 %0, 2
  %2 = icmp eq i32 %1, 0
  %3 = call i32 @rand()
  %4 = call i32 @rand()
  %5 = call i32 @rand()
  %6 = sext i1 %2 to i32
  %storemerge.in = xor i32 %5, %6
  %storemerge = trunc i32 %storemerge.in to i8
  call void @anon1(i8 %storemerge)
  ret void
}

define void @anon1(i8 %data) local_unnamed_addr {
dec_label_pc_2bcb6:
  call void @anon2(i8 %data)
  ret void
}

define void @anon2(i8 %data) local_unnamed_addr {
dec_label_pc_2bd13:
  call void @anon3(i8 %data)
  ret void
}

define void @anon3(i8 %data) local_unnamed_addr {
dec_label_pc_2bd70:
  call void @anon4(i8 %data)
  ret void
}

define void @anon4(i8 %data) local_unnamed_addr {
dec_label_pc_2bdcd:
  %0 = icmp slt i8 %data, 1
  br i1 %0, label %dec_label_pc_2bdf8, label %dec_label_pc_2bde4

dec_label_pc_2bde4:                               ; preds = %dec_label_pc_2bdcd
  %1 = mul i8 %data, 2
  call void @printHexCharLine(i8 %1)
  br label %dec_label_pc_2bdf8

dec_label_pc_2bdf8:                               ; preds = %dec_label_pc_2bde4, %dec_label_pc_2bdcd
  ret void
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_5a18e:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_76cf3, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

