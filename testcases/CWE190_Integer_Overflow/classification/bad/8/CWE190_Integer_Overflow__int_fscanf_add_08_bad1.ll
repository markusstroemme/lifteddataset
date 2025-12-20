@global_var_82878 = external constant [3 x i8]
@global_var_8c32c = external constant [4 x i8]
@global_var_b8080 = external local_unnamed_addr global ptr

define i32 @staticReturnsTrue.351() local_unnamed_addr {
dec_label_pc_172c9:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_172e7:
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-24, align 8
  %1 = call i32 @staticReturnsTrue.351()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_17339, label %dec_label_pc_17317

dec_label_pc_17317:                               ; preds = %dec_label_pc_172e7
  %3 = load ptr, ptr @global_var_b8080, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_82878, ptr nonnull %stack_var_-24)
  br label %dec_label_pc_17339

dec_label_pc_17339:                               ; preds = %dec_label_pc_17317, %dec_label_pc_172e7
  %5 = call i32 @staticReturnsTrue.351()
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %dec_label_pc_1735a, label %dec_label_pc_17347

dec_label_pc_17347:                               ; preds = %dec_label_pc_17339
  %7 = load i64, ptr %stack_var_-24, align 8
  %8 = trunc i64 %7 to i32
  %9 = add i32 %8, 1
  call void @printIntLine(i32 %9)
  br label %dec_label_pc_1735a

dec_label_pc_1735a:                               ; preds = %dec_label_pc_17347, %dec_label_pc_17339
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_1736f, label %dec_label_pc_1736a

dec_label_pc_1736a:                               ; preds = %dec_label_pc_1735a
  call void @__stack_chk_fail()
  br label %dec_label_pc_1736f

dec_label_pc_1736f:                               ; preds = %dec_label_pc_1736a, %dec_label_pc_1735a
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

