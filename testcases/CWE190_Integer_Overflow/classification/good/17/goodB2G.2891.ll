@global_var_82c98 = external constant [54 x i8]
@global_var_8c833 = external constant [6 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_130e4:
  %0 = call i32 @rand()
  %1 = call i32 @rand()
  %2 = call i32 @rand()
  %3 = call i32 @rand()
  %4 = urem i32 %0, 2
  %5 = icmp eq i32 %4, 0
  %6 = sext i1 %5 to i32
  %storemerge3.le = xor i32 %3, %6
  %7 = trunc i32 %storemerge3.le to i8
  %8 = icmp eq i8 %7, 127
  br i1 %8, label %dec_label_pc_13108, label %dec_label_pc_130ea

dec_label_pc_130ea:                               ; preds = %dec_label_pc_130e4
  %9 = add i8 %7, 1
  call void @printHexCharLine(i8 %9)
  br label %dec_label_pc_13121

dec_label_pc_13108:                               ; preds = %dec_label_pc_130e4
  call void @printLine(ptr @global_var_82c98)
  br label %dec_label_pc_13121

dec_label_pc_13121:                               ; preds = %dec_label_pc_130ea, %dec_label_pc_13108
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6a14a:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6a16d, label %dec_label_pc_6a161

dec_label_pc_6a161:                               ; preds = %dec_label_pc_6a14a
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6a16d

dec_label_pc_6a16d:                               ; preds = %dec_label_pc_6a161, %dec_label_pc_6a14a
  ret void
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_6a2c4:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c833, i32 %0)
  ret void
}

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

