@global_var_886d0 = external constant [54 x i8]
@global_var_8c81c = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_4a5b2:
  %0 = call i32 @globalReturnsTrueOrFalse()
  %1 = call i32 @rand()
  %2 = urem i32 %1, 2
  %3 = icmp eq i32 %2, 0
  %4 = call i32 @rand()
  %5 = mul i32 %4, 1073741824
  %6 = call i32 @rand()
  %7 = mul i32 %6, 32768
  %8 = xor i32 %7, %5
  %9 = call i32 @rand()
  %10 = xor i32 %8, %9
  %11 = sext i1 %3 to i32
  %storemerge2.in = xor i32 %10, %11
  %12 = call i32 @globalReturnsTrueOrFalse()
  %13 = icmp eq i32 %12, 0
  %14 = icmp eq i32 %storemerge2.in, 2147483647
  br i1 %13, label %dec_label_pc_4a6a6, label %dec_label_pc_4a676

dec_label_pc_4a676:                               ; preds = %dec_label_pc_4a5b2
  br i1 %14, label %dec_label_pc_4a695, label %dec_label_pc_4a67f

dec_label_pc_4a67f:                               ; preds = %dec_label_pc_4a676
  %15 = add i32 %storemerge2.in, 1
  call void @printIntLine(i32 %15)
  br label %dec_label_pc_4a6d4

dec_label_pc_4a695:                               ; preds = %dec_label_pc_4a676
  call void @printLine(ptr @global_var_886d0)
  br label %dec_label_pc_4a6d4

dec_label_pc_4a6a6:                               ; preds = %dec_label_pc_4a5b2
  br i1 %14, label %dec_label_pc_4a6c5, label %dec_label_pc_4a6af

dec_label_pc_4a6af:                               ; preds = %dec_label_pc_4a6a6
  %16 = add i32 %storemerge2.in, 1
  call void @printIntLine(i32 %16)
  br label %dec_label_pc_4a6d4

dec_label_pc_4a6c5:                               ; preds = %dec_label_pc_4a6a6
  call void @printLine(ptr @global_var_886d0)
  br label %dec_label_pc_4a6d4

dec_label_pc_4a6d4:                               ; preds = %dec_label_pc_4a6c5, %dec_label_pc_4a6af, %dec_label_pc_4a695, %dec_label_pc_4a67f
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

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6a1a5:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c81c, i64 %0)
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_6a678:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

