@global_var_82e88 = external constant [54 x i8]
@global_var_8c833 = external constant [6 x i8]

define i8 @anon0(i8 %data) local_unnamed_addr {
dec_label_pc_13efc:
  %0 = call i32 @rand()
  %1 = urem i32 %0, 2
  %2 = icmp eq i32 %1, 0
  %3 = call i32 @rand()
  %4 = call i32 @rand()
  %5 = call i32 @rand()
  %6 = sext i1 %2 to i32
  %storemerge.in = xor i32 %5, %6
  %storemerge = trunc i32 %storemerge.in to i8
  ret i8 %storemerge
}

define void @anon1() local_unnamed_addr {
dec_label_pc_13f44:
  %0 = call i8 @anon0(i8 32)
  %1 = icmp eq i8 %0, 127
  br i1 %1, label %dec_label_pc_13f86, label %dec_label_pc_13f68

dec_label_pc_13f68:                               ; preds = %dec_label_pc_13f44
  %2 = zext i8 %0 to i32
  %3 = mul i32 %2, 16777216
  %sext = add i32 %3, 16777216
  %4 = udiv i32 %sext, 16777216
  %5 = trunc i32 %4 to i8
  call void @printHexCharLine(i8 %5)
  br label %dec_label_pc_13f95

dec_label_pc_13f86:                               ; preds = %dec_label_pc_13f44
  call void @printLine(ptr @global_var_82e88)
  br label %dec_label_pc_13f95

dec_label_pc_13f95:                               ; preds = %dec_label_pc_13f86, %dec_label_pc_13f68
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

