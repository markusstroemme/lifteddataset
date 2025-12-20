@global_var_7a994 = external constant [4 x i8]
@global_var_a9070 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_10576:
  %0 = load i32, ptr @global_var_a9070, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_105ff, label %dec_label_pc_105dd

dec_label_pc_105dd:                               ; preds = %dec_label_pc_10576
  %2 = call i32 @rand()
  %3 = urem i32 %2, 2
  %4 = icmp eq i32 %3, 0
  %5 = call i32 @rand()
  %6 = mul i32 %5, 1073741824
  %7 = call i32 @rand()
  %8 = mul i32 %7, 32768
  %9 = xor i32 %8, %6
  %10 = call i32 @rand()
  %11 = xor i32 %9, %10
  %12 = sext i1 %4 to i32
  %storemerge.in = xor i32 %11, %12
  %13 = load i32, ptr @global_var_a9070, align 4
  %14 = icmp eq i32 %13, 0
  %15 = icmp slt i32 %storemerge.in, 1
  %or.cond = or i1 %14, %15
  br i1 %or.cond, label %dec_label_pc_105ff, label %dec_label_pc_105ed

dec_label_pc_105ed:                               ; preds = %dec_label_pc_105dd
  %16 = mul i32 %storemerge.in, 2
  call void @printIntLine(i32 %16)
  br label %dec_label_pc_105ff

dec_label_pc_105ff:                               ; preds = %dec_label_pc_10576, %dec_label_pc_105ed, %dec_label_pc_105dd
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

