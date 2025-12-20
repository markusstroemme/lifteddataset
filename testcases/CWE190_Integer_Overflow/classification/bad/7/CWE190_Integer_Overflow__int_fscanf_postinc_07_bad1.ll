@global_var_86a68 = external constant [3 x i8]
@global_var_8ca7c = external constant [4 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr
@global_var_bc054 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_36582:
  %.reg2mem = alloca i32, align 4
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-24, align 8
  %1 = load i32, ptr @global_var_bc054, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store i32 %1, ptr %.reg2mem, align 4
  br i1 %3, label %dec_label_pc_365d1, label %dec_label_pc_365af

dec_label_pc_365af:                               ; preds = %dec_label_pc_36582
  %4 = load ptr, ptr @global_var_bc0b0, align 8
  %5 = call i32 (ptr, ptr, ...) @fscanf(ptr %4, ptr @global_var_86a68, ptr nonnull %stack_var_-24)
  %.pre = load i32, ptr @global_var_bc054, align 4
  store i32 %.pre, ptr %.reg2mem, align 4
  br label %dec_label_pc_365d1

dec_label_pc_365d1:                               ; preds = %dec_label_pc_365af, %dec_label_pc_36582
  %.reload = load i32, ptr %.reg2mem, align 4
  %6 = icmp eq i32 %.reload, 5
  %7 = icmp eq i1 %6, false
  br i1 %7, label %dec_label_pc_365f5, label %dec_label_pc_365dc

dec_label_pc_365dc:                               ; preds = %dec_label_pc_365d1
  %8 = load i64, ptr %stack_var_-24, align 8
  %9 = mul i64 %8, 4294967296
  %sext = add i64 %9, 4294967296
  %10 = ashr exact i64 %sext, 32
  store i64 %10, ptr %stack_var_-24, align 8
  %11 = trunc i64 %10 to i32
  call void @printIntLine(i32 %11)
  br label %dec_label_pc_365f5

dec_label_pc_365f5:                               ; preds = %dec_label_pc_365dc, %dec_label_pc_365d1
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %0, %12
  br i1 %13, label %dec_label_pc_3660a, label %dec_label_pc_36605

dec_label_pc_36605:                               ; preds = %dec_label_pc_365f5
  call void @__stack_chk_fail()
  br label %dec_label_pc_3660a

dec_label_pc_3660a:                               ; preds = %dec_label_pc_36605, %dec_label_pc_365f5
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6a1a5:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8ca7c, i64 %0)
  ret void
}

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

