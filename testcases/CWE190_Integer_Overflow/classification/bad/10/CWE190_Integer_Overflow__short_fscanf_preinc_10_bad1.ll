@global_var_88ff0 = external constant [4 x i8]
@global_var_8c81c = external constant [4 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr
@global_var_bc0a0 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_4f33f:
  %stack_var_-20 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-20, align 2
  %1 = load i32, ptr @global_var_bc0a0, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_4f3b4, label %dec_label_pc_4f38c

dec_label_pc_4f38c:                               ; preds = %dec_label_pc_4f33f
  %3 = load ptr, ptr @global_var_bc0b0, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_88ff0, ptr nonnull %stack_var_-20)
  %.pr = load i32, ptr @global_var_bc0a0, align 4
  %5 = icmp eq i32 %.pr, 0
  br i1 %5, label %dec_label_pc_4f3b4, label %dec_label_pc_4f396

dec_label_pc_4f396:                               ; preds = %dec_label_pc_4f38c
  %6 = load i16, ptr %stack_var_-20, align 2
  %7 = add i16 %6, 1
  store i16 %7, ptr %stack_var_-20, align 2
  %8 = sext i16 %7 to i32
  call void @printIntLine(i32 %8)
  br label %dec_label_pc_4f3b4

dec_label_pc_4f3b4:                               ; preds = %dec_label_pc_4f33f, %dec_label_pc_4f396, %dec_label_pc_4f38c
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_4f3c9, label %dec_label_pc_4f3c4

dec_label_pc_4f3c4:                               ; preds = %dec_label_pc_4f3b4
  call void @__stack_chk_fail()
  br label %dec_label_pc_4f3c9

dec_label_pc_4f3c9:                               ; preds = %dec_label_pc_4f3c4, %dec_label_pc_4f3b4
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6a1a5:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c81c, i64 %0)
  ret void
}

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

