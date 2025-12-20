@global_var_68138 = external constant [3 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c070 = external global ptr
@global_var_9c024 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_1450e:
  %stack_var_-24 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-24, align 4
  %1 = load i32, ptr @global_var_9c024, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_14581, label %dec_label_pc_1455d

dec_label_pc_1455d:                               ; preds = %dec_label_pc_1450e
  %4 = load ptr, ptr @global_var_9c070, align 8
  %5 = call i32 (ptr, ptr, ...) @fscanf(ptr %4, ptr @global_var_68138, ptr nonnull %stack_var_-24)
  %.pre = load i32, ptr @global_var_9c024, align 4
  %.pre3 = load i32, ptr %stack_var_-24, align 4
  %6 = icmp eq i32 %.pre, 5
  %7 = icmp eq i1 %6, false
  %8 = icmp eq i32 %.pre3, 0
  %or.cond = or i1 %7, %8
  br i1 %or.cond, label %dec_label_pc_14581, label %dec_label_pc_1456f

dec_label_pc_1456f:                               ; preds = %dec_label_pc_1455d
  %9 = mul i32 %.pre3, 2
  call void @printUnsignedLine(i32 %9)
  br label %dec_label_pc_14581

dec_label_pc_14581:                               ; preds = %dec_label_pc_1450e, %dec_label_pc_1456f, %dec_label_pc_1455d
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_14596, label %dec_label_pc_14591

dec_label_pc_14591:                               ; preds = %dec_label_pc_14581
  call void @__stack_chk_fail()
  br label %dec_label_pc_14596

dec_label_pc_14596:                               ; preds = %dec_label_pc_14591, %dec_label_pc_14581
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

