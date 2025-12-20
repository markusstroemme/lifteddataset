@global_var_82968 = external constant [3 x i8]
@global_var_8c32c = external constant [4 x i8]
@global_var_b8080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_17ada:
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-24, align 8
  %1 = call i32 @globalReturnsTrue()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_17b2c, label %dec_label_pc_17b0a

dec_label_pc_17b0a:                               ; preds = %dec_label_pc_17ada
  %3 = load ptr, ptr @global_var_b8080, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_82968, ptr nonnull %stack_var_-24)
  br label %dec_label_pc_17b2c

dec_label_pc_17b2c:                               ; preds = %dec_label_pc_17b0a, %dec_label_pc_17ada
  %5 = call i32 @globalReturnsTrue()
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %dec_label_pc_17b4d, label %dec_label_pc_17b3a

dec_label_pc_17b3a:                               ; preds = %dec_label_pc_17b2c
  %7 = load i64, ptr %stack_var_-24, align 8
  %8 = trunc i64 %7 to i32
  %9 = add i32 %8, 1
  call void @printIntLine(i32 %9)
  br label %dec_label_pc_17b4d

dec_label_pc_17b4d:                               ; preds = %dec_label_pc_17b3a, %dec_label_pc_17b2c
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_17b62, label %dec_label_pc_17b5d

dec_label_pc_17b5d:                               ; preds = %dec_label_pc_17b4d
  call void @__stack_chk_fail()
  br label %dec_label_pc_17b62

dec_label_pc_17b62:                               ; preds = %dec_label_pc_17b5d, %dec_label_pc_17b4d
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

