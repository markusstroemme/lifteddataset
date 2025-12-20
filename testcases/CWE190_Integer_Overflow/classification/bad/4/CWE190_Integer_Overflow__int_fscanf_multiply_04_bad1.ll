@global_var_83180 = external constant [3 x i8]
@global_var_8c32c = external constant [4 x i8]
@global_var_b8080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_1b695:
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-24, align 8
  %1 = load ptr, ptr @global_var_b8080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_83180, ptr nonnull %stack_var_-24)
  %3 = load i64, ptr %stack_var_-24, align 8
  %4 = trunc i64 %3 to i32
  %5 = icmp slt i32 %4, 1
  br i1 %5, label %dec_label_pc_1b704, label %dec_label_pc_1b6f2

dec_label_pc_1b6f2:                               ; preds = %dec_label_pc_1b695
  %6 = mul i32 %4, 2
  call void @printIntLine(i32 %6)
  br label %dec_label_pc_1b704

dec_label_pc_1b704:                               ; preds = %dec_label_pc_1b6f2, %dec_label_pc_1b695
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %0, %7
  br i1 %8, label %dec_label_pc_1b719, label %dec_label_pc_1b714

dec_label_pc_1b714:                               ; preds = %dec_label_pc_1b704
  call void @__stack_chk_fail()
  br label %dec_label_pc_1b719

dec_label_pc_1b719:                               ; preds = %dec_label_pc_1b714, %dec_label_pc_1b704
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

