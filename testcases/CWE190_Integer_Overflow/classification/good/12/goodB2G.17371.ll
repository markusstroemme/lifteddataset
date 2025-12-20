@global_var_8a470 = external constant [54 x i8]
@global_var_8c81c = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_58db5:
  %0 = call i32 @globalReturnsTrueOrFalse()
  %1 = call i32 @rand()
  %2 = urem i32 %1, 2
  %3 = icmp eq i32 %2, 0
  %4 = call i32 @rand()
  %5 = call i32 @rand()
  %6 = mul i32 %5, 32768
  %7 = call i32 @rand()
  %8 = xor i32 %7, %6
  %9 = sext i1 %3 to i32
  %storemerge6.in = xor i32 %8, %9
  %storemerge5.in = mul i32 %storemerge6.in, 65536
  %10 = call i32 @globalReturnsTrueOrFalse()
  %11 = icmp eq i32 %10, 0
  %12 = trunc i32 %storemerge6.in to i16
  %13 = icmp eq i16 %12, 32767
  br i1 %11, label %dec_label_pc_58e9f, label %dec_label_pc_58e66

dec_label_pc_58e66:                               ; preds = %dec_label_pc_58db5
  br i1 %13, label %dec_label_pc_58e8e, label %dec_label_pc_58e6e

dec_label_pc_58e6e:                               ; preds = %dec_label_pc_58e66
  %sext2 = add i32 %storemerge5.in, 65536
  %14 = ashr exact i32 %sext2, 16
  call void @printIntLine(i32 %14)
  br label %dec_label_pc_58ed6

dec_label_pc_58e8e:                               ; preds = %dec_label_pc_58e66
  call void @printLine(ptr @global_var_8a470)
  br label %dec_label_pc_58ed6

dec_label_pc_58e9f:                               ; preds = %dec_label_pc_58db5
  br i1 %13, label %dec_label_pc_58ec7, label %dec_label_pc_58ea7

dec_label_pc_58ea7:                               ; preds = %dec_label_pc_58e9f
  %sext3 = add i32 %storemerge5.in, 65536
  %15 = ashr exact i32 %sext3, 16
  call void @printIntLine(i32 %15)
  br label %dec_label_pc_58ed6

dec_label_pc_58ec7:                               ; preds = %dec_label_pc_58e9f
  call void @printLine(ptr @global_var_8a470)
  br label %dec_label_pc_58ed6

dec_label_pc_58ed6:                               ; preds = %dec_label_pc_58ec7, %dec_label_pc_58ea7, %dec_label_pc_58e8e, %dec_label_pc_58e6e
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

