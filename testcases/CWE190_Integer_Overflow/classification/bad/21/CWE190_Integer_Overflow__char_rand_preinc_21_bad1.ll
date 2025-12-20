@global_var_8c833 = external constant [6 x i8]
@global_var_bc118 = external local_unnamed_addr global i32

define void @anon1(i8 %data) local_unnamed_addr {
dec_label_pc_132cd:
  %0 = load i32, ptr @global_var_bc118, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_13304, label %dec_label_pc_132e8

dec_label_pc_132e8:                               ; preds = %dec_label_pc_132cd
  %2 = add i8 %data, 1
  call void @printHexCharLine(i8 %2)
  br label %dec_label_pc_13304

dec_label_pc_13304:                               ; preds = %dec_label_pc_132e8, %dec_label_pc_132cd
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_13307:
  %0 = call i32 @rand()
  %1 = urem i32 %0, 2
  %2 = icmp eq i32 %1, 0
  %3 = call i32 @rand()
  %4 = call i32 @rand()
  %5 = call i32 @rand()
  %6 = sext i1 %2 to i32
  %storemerge.in = xor i32 %5, %6
  %storemerge = trunc i32 %storemerge.in to i8
  store i32 1, ptr @global_var_bc118, align 4
  call void @anon1(i8 %storemerge)
  ret void
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_6a2c4:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c833, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

