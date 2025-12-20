@global_var_67828 = external constant [3 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c070 = external global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_1019c:
  %stack_var_-24 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-24, align 4
  %1 = call i32 @globalReturnsTrue()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_101ee, label %dec_label_pc_101cc

dec_label_pc_101cc:                               ; preds = %dec_label_pc_1019c
  %3 = load ptr, ptr @global_var_9c070, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_67828, ptr nonnull %stack_var_-24)
  br label %dec_label_pc_101ee

dec_label_pc_101ee:                               ; preds = %dec_label_pc_101cc, %dec_label_pc_1019c
  %5 = call i32 @globalReturnsTrue()
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %dec_label_pc_1020f, label %dec_label_pc_101fc

dec_label_pc_101fc:                               ; preds = %dec_label_pc_101ee
  %7 = load i32, ptr %stack_var_-24, align 4
  %8 = add i32 %7, 1
  call void @printUnsignedLine(i32 %8)
  br label %dec_label_pc_1020f

dec_label_pc_1020f:                               ; preds = %dec_label_pc_101fc, %dec_label_pc_101ee
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_10224, label %dec_label_pc_1021f

dec_label_pc_1021f:                               ; preds = %dec_label_pc_1020f
  call void @__stack_chk_fail()
  br label %dec_label_pc_10224

dec_label_pc_10224:                               ; preds = %dec_label_pc_1021f, %dec_label_pc_1020f
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_550e7:
  ret i32 1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

