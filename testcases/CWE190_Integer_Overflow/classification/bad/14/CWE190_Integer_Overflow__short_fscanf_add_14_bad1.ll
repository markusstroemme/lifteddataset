@global_var_71b18 = external constant [4 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9074 = external local_unnamed_addr global i32
@global_var_a9080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_1bae2:
  %.reg2mem = alloca i32, align 4
  %stack_var_-20 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-20, align 2
  %1 = load i32, ptr @global_var_a9074, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store i32 %1, ptr %.reg2mem, align 4
  br i1 %3, label %dec_label_pc_1bb30, label %dec_label_pc_1bb0e

dec_label_pc_1bb0e:                               ; preds = %dec_label_pc_1bae2
  %4 = load ptr, ptr @global_var_a9080, align 8
  %5 = call i32 (ptr, ptr, ...) @fscanf(ptr %4, ptr @global_var_71b18, ptr nonnull %stack_var_-20)
  %.pre = load i32, ptr @global_var_a9074, align 4
  store i32 %.pre, ptr %.reg2mem, align 4
  br label %dec_label_pc_1bb30

dec_label_pc_1bb30:                               ; preds = %dec_label_pc_1bb0e, %dec_label_pc_1bae2
  %.reload = load i32, ptr %.reg2mem, align 4
  %6 = icmp eq i32 %.reload, 5
  %7 = icmp eq i1 %6, false
  br i1 %7, label %dec_label_pc_1bb51, label %dec_label_pc_1bb3b

dec_label_pc_1bb3b:                               ; preds = %dec_label_pc_1bb30
  %8 = load i16, ptr %stack_var_-20, align 2
  %9 = add i16 %8, 1
  %10 = sext i16 %9 to i32
  call void @printIntLine(i32 %10)
  br label %dec_label_pc_1bb51

dec_label_pc_1bb51:                               ; preds = %dec_label_pc_1bb3b, %dec_label_pc_1bb30
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_1bb66, label %dec_label_pc_1bb61

dec_label_pc_1bb61:                               ; preds = %dec_label_pc_1bb51
  call void @__stack_chk_fail()
  br label %dec_label_pc_1bb66

dec_label_pc_1bb66:                               ; preds = %dec_label_pc_1bb61, %dec_label_pc_1bb51
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

