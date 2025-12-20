@global_var_83368 = external constant [4 x i8]
@global_var_8c829 = external constant [5 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr
@global_var_bc02c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_1671f:
  %.reg2mem = alloca i32, align 4
  %stack_var_-32 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-32, align 8
  %1 = load i32, ptr @global_var_bc02c, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store i32 %1, ptr %.reg2mem, align 4
  br i1 %3, label %dec_label_pc_1676f, label %dec_label_pc_1674d

dec_label_pc_1674d:                               ; preds = %dec_label_pc_1671f
  %4 = load ptr, ptr @global_var_bc0b0, align 8
  %5 = call i32 (ptr, ptr, ...) @fscanf(ptr %4, ptr @global_var_83368, ptr nonnull %stack_var_-32)
  %.pre = load i32, ptr @global_var_bc02c, align 4
  store i32 %.pre, ptr %.reg2mem, align 4
  br label %dec_label_pc_1676f

dec_label_pc_1676f:                               ; preds = %dec_label_pc_1674d, %dec_label_pc_1671f
  %.reload = load i32, ptr %.reg2mem, align 4
  %6 = icmp eq i32 %.reload, 5
  %7 = icmp eq i1 %6, false
  br i1 %7, label %dec_label_pc_1679a, label %dec_label_pc_1677a

dec_label_pc_1677a:                               ; preds = %dec_label_pc_1676f
  %8 = load i64, ptr %stack_var_-32, align 8
  %9 = add i64 %8, 1
  store i64 %9, ptr %stack_var_-32, align 8
  call void @printLongLongLine(i64 %9)
  br label %dec_label_pc_1679a

dec_label_pc_1679a:                               ; preds = %dec_label_pc_1677a, %dec_label_pc_1676f
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_167af, label %dec_label_pc_167aa

dec_label_pc_167aa:                               ; preds = %dec_label_pc_1679a
  call void @__stack_chk_fail()
  br label %dec_label_pc_167af

dec_label_pc_167af:                               ; preds = %dec_label_pc_167aa, %dec_label_pc_1679a
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_6a268:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c829, i32 %0)
  ret void
}

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

