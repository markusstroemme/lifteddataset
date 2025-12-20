@global_var_95449 = external constant [5 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_2d576:
  %stack_var_-40.0.off0.reg2mem = alloca i64, align 8
  %0 = call i32 @globalReturnsTrue()
  %1 = icmp eq i32 %0, 0
  store i64 0, ptr %stack_var_-40.0.off0.reg2mem, align 8
  br i1 %1, label %dec_label_pc_2d636, label %dec_label_pc_2d59d

dec_label_pc_2d59d:                               ; preds = %dec_label_pc_2d576
  %2 = call i32 @rand()
  %3 = urem i32 %2, 2
  %4 = icmp eq i32 %3, 0
  %5 = call i32 @rand()
  %6 = zext i32 %5 to i64
  %7 = mul i64 %6, 1152921504606846976
  %8 = call i32 @rand()
  %9 = zext i32 %8 to i64
  %10 = mul i64 %9, 35184372088832
  %11 = call i32 @rand()
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 1073741824
  %14 = call i32 @rand()
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 32768
  %17 = call i32 @rand()
  %18 = sext i32 %17 to i64
  %19 = sext i1 %4 to i64
  %20 = xor i64 %7, %19
  %21 = xor i64 %20, %10
  %22 = xor i64 %21, %13
  %23 = xor i64 %22, %16
  %storemerge = xor i64 %23, %18
  store i64 %storemerge, ptr %stack_var_-40.0.off0.reg2mem, align 8
  br label %dec_label_pc_2d636

dec_label_pc_2d636:                               ; preds = %dec_label_pc_2d59d, %dec_label_pc_2d576
  %24 = call i32 @globalReturnsTrue()
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %dec_label_pc_2d65c, label %dec_label_pc_2d644

dec_label_pc_2d644:                               ; preds = %dec_label_pc_2d636
  %stack_var_-40.0.off0.reload = load i64, ptr %stack_var_-40.0.off0.reg2mem, align 8
  %26 = mul i64 %stack_var_-40.0.off0.reload, %stack_var_-40.0.off0.reload
  call void @printLongLongLine(i64 %26)
  br label %dec_label_pc_2d65c

dec_label_pc_2d65c:                               ; preds = %dec_label_pc_2d644, %dec_label_pc_2d636
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_776a9:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_95449, i32 %0)
  ret void
}

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_77a9b:
  ret i32 1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

