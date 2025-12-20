@global_var_83e08 = external constant [3 x i8]
@global_var_8c32c = external constant [4 x i8]
@global_var_b8080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_21b91:
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-24, align 8
  %1 = call i32 @globalReturnsTrue()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_21be3, label %dec_label_pc_21bc1

dec_label_pc_21bc1:                               ; preds = %dec_label_pc_21b91
  %3 = load ptr, ptr @global_var_b8080, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_83e08, ptr nonnull %stack_var_-24)
  br label %dec_label_pc_21be3

dec_label_pc_21be3:                               ; preds = %dec_label_pc_21bc1, %dec_label_pc_21b91
  %5 = call i32 @globalReturnsTrue()
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %dec_label_pc_21c07, label %dec_label_pc_21bf1

dec_label_pc_21bf1:                               ; preds = %dec_label_pc_21be3
  %7 = load i64, ptr %stack_var_-24, align 8
  %sext = mul i64 %7, 4294967296
  %8 = ashr exact i64 %sext, 32
  %9 = mul nsw i64 %8, %8
  %10 = trunc i64 %9 to i32
  call void @printIntLine(i32 %10)
  br label %dec_label_pc_21c07

dec_label_pc_21c07:                               ; preds = %dec_label_pc_21bf1, %dec_label_pc_21be3
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_21c1c, label %dec_label_pc_21c17

dec_label_pc_21c17:                               ; preds = %dec_label_pc_21c07
  call void @__stack_chk_fail()
  br label %dec_label_pc_21c1c

dec_label_pc_21c1c:                               ; preds = %dec_label_pc_21c17, %dec_label_pc_21c07
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6e7e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c32c, i64 %0)
  ret void
}

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_6ec9b:
  ret i32 1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

