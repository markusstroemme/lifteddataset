@global_var_95449 = external constant [5 x i8]
@global_var_c3074 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_2e163:
  %stack_var_-40.0.off0.reg2mem = alloca i64, align 8
  %.reg2mem = alloca i32, align 4
  %0 = load i32, ptr @global_var_c3074, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  store i32 %0, ptr %.reg2mem, align 4
  store i64 0, ptr %stack_var_-40.0.off0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_2e220, label %dec_label_pc_2e187

dec_label_pc_2e187:                               ; preds = %dec_label_pc_2e163
  %3 = call i32 @rand()
  %4 = urem i32 %3, 2
  %5 = icmp eq i32 %4, 0
  %6 = call i32 @rand()
  %7 = zext i32 %6 to i64
  %8 = mul i64 %7, 1152921504606846976
  %9 = call i32 @rand()
  %10 = zext i32 %9 to i64
  %11 = mul i64 %10, 35184372088832
  %12 = call i32 @rand()
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 1073741824
  %15 = call i32 @rand()
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 32768
  %18 = call i32 @rand()
  %19 = sext i32 %18 to i64
  %20 = sext i1 %5 to i64
  %21 = xor i64 %8, %20
  %22 = xor i64 %21, %11
  %23 = xor i64 %22, %14
  %24 = xor i64 %23, %17
  %storemerge = xor i64 %24, %19
  %.pre = load i32, ptr @global_var_c3074, align 4
  store i32 %.pre, ptr %.reg2mem, align 4
  store i64 %storemerge, ptr %stack_var_-40.0.off0.reg2mem, align 8
  br label %dec_label_pc_2e220

dec_label_pc_2e220:                               ; preds = %dec_label_pc_2e187, %dec_label_pc_2e163
  %.reload = load i32, ptr %.reg2mem, align 4
  %25 = icmp eq i32 %.reload, 5
  %26 = icmp eq i1 %25, false
  br i1 %26, label %dec_label_pc_2e243, label %dec_label_pc_2e22b

dec_label_pc_2e22b:                               ; preds = %dec_label_pc_2e220
  %stack_var_-40.0.off0.reload = load i64, ptr %stack_var_-40.0.off0.reg2mem, align 8
  %27 = mul i64 %stack_var_-40.0.off0.reload, %stack_var_-40.0.off0.reload
  call void @printLongLongLine(i64 %27)
  br label %dec_label_pc_2e243

dec_label_pc_2e243:                               ; preds = %dec_label_pc_2e22b, %dec_label_pc_2e220
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_776a9:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_95449, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

