@global_var_83ee8 = external constant [3 x i8]
@global_var_8c32c = external constant [4 x i8]
@global_var_b8080 = external local_unnamed_addr global ptr
@global_var_b8074 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_223eb:
  %.reg2mem = alloca i32, align 4
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-24, align 8
  %1 = load i32, ptr @global_var_b8074, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store i32 %1, ptr %.reg2mem, align 4
  br i1 %3, label %dec_label_pc_2243a, label %dec_label_pc_22418

dec_label_pc_22418:                               ; preds = %dec_label_pc_223eb
  %4 = load ptr, ptr @global_var_b8080, align 8
  %5 = call i32 (ptr, ptr, ...) @fscanf(ptr %4, ptr @global_var_83ee8, ptr nonnull %stack_var_-24)
  %.pre = load i32, ptr @global_var_b8074, align 4
  store i32 %.pre, ptr %.reg2mem, align 4
  br label %dec_label_pc_2243a

dec_label_pc_2243a:                               ; preds = %dec_label_pc_22418, %dec_label_pc_223eb
  %.reload = load i32, ptr %.reg2mem, align 4
  %6 = icmp eq i32 %.reload, 5
  %7 = icmp eq i1 %6, false
  br i1 %7, label %dec_label_pc_2245b, label %dec_label_pc_22445

dec_label_pc_22445:                               ; preds = %dec_label_pc_2243a
  %8 = load i64, ptr %stack_var_-24, align 8
  %sext = mul i64 %8, 4294967296
  %9 = ashr exact i64 %sext, 32
  %10 = mul nsw i64 %9, %9
  %11 = trunc i64 %10 to i32
  call void @printIntLine(i32 %11)
  br label %dec_label_pc_2245b

dec_label_pc_2245b:                               ; preds = %dec_label_pc_22445, %dec_label_pc_2243a
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %0, %12
  br i1 %13, label %dec_label_pc_22470, label %dec_label_pc_2246b

dec_label_pc_2246b:                               ; preds = %dec_label_pc_2245b
  call void @__stack_chk_fail()
  br label %dec_label_pc_22470

dec_label_pc_22470:                               ; preds = %dec_label_pc_2246b, %dec_label_pc_2245b
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6e7e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c32c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

