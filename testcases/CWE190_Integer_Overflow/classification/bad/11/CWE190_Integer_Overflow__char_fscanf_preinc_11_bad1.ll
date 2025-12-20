@global_var_81748 = external constant [3 x i8]
@global_var_8c833 = external constant [6 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_990a:
  %stack_var_-18 = alloca i8, align 1
  %0 = call i64 @__readfsqword(i64 40)
  store i8 32, ptr %stack_var_-18, align 1
  %1 = call i32 @globalReturnsTrue()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_9959, label %dec_label_pc_9937

dec_label_pc_9937:                                ; preds = %dec_label_pc_990a
  %3 = load ptr, ptr @global_var_bc0b0, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_81748, ptr nonnull %stack_var_-18)
  br label %dec_label_pc_9959

dec_label_pc_9959:                                ; preds = %dec_label_pc_9937, %dec_label_pc_990a
  %5 = call i32 @globalReturnsTrue()
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %dec_label_pc_9983, label %dec_label_pc_9967

dec_label_pc_9967:                                ; preds = %dec_label_pc_9959
  %7 = load i8, ptr %stack_var_-18, align 1
  %8 = add i8 %7, 1
  store i8 %8, ptr %stack_var_-18, align 1
  call void @printHexCharLine(i8 %8)
  br label %dec_label_pc_9983

dec_label_pc_9983:                                ; preds = %dec_label_pc_9967, %dec_label_pc_9959
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_9998, label %dec_label_pc_9993

dec_label_pc_9993:                                ; preds = %dec_label_pc_9983
  call void @__stack_chk_fail()
  br label %dec_label_pc_9998

dec_label_pc_9998:                                ; preds = %dec_label_pc_9993, %dec_label_pc_9983
  ret void
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_6a2c4:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c833, i32 %0)
  ret void
}

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_6a65a:
  ret i32 1
}

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

