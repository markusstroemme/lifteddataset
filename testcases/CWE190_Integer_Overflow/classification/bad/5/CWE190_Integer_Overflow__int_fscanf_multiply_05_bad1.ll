@global_var_831d0 = external constant [3 x i8]
@global_var_8c32c = external constant [4 x i8]
@global_var_b8080 = external local_unnamed_addr global ptr
@global_var_b8028 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_1b940:
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-24, align 8
  %1 = load i32, ptr @global_var_b8028, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_1b9b1, label %dec_label_pc_1b98e

dec_label_pc_1b98e:                               ; preds = %dec_label_pc_1b940
  %3 = load ptr, ptr @global_var_b8080, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_831d0, ptr nonnull %stack_var_-24)
  %.pr = load i32, ptr @global_var_b8028, align 4
  %5 = icmp eq i32 %.pr, 0
  br i1 %5, label %dec_label_pc_1b9b1, label %dec_label_pc_1b998

dec_label_pc_1b998:                               ; preds = %dec_label_pc_1b98e
  %6 = load i64, ptr %stack_var_-24, align 8
  %7 = trunc i64 %6 to i32
  %8 = icmp slt i32 %7, 1
  br i1 %8, label %dec_label_pc_1b9b1, label %dec_label_pc_1b99f

dec_label_pc_1b99f:                               ; preds = %dec_label_pc_1b998
  %9 = mul i32 %7, 2
  call void @printIntLine(i32 %9)
  br label %dec_label_pc_1b9b1

dec_label_pc_1b9b1:                               ; preds = %dec_label_pc_1b940, %dec_label_pc_1b99f, %dec_label_pc_1b998, %dec_label_pc_1b98e
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_1b9c6, label %dec_label_pc_1b9c1

dec_label_pc_1b9c1:                               ; preds = %dec_label_pc_1b9b1
  call void @__stack_chk_fail()
  br label %dec_label_pc_1b9c6

dec_label_pc_1b9c6:                               ; preds = %dec_label_pc_1b9c1, %dec_label_pc_1b9b1
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

