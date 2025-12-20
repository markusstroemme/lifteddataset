@global_var_68358 = external constant [3 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c070 = external global ptr
@global_var_9c06c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_15835:
  %stack_var_-24 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-24, align 4
  %1 = load i32, ptr @global_var_9c06c, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_158a8, label %dec_label_pc_15884

dec_label_pc_15884:                               ; preds = %dec_label_pc_15835
  %4 = load ptr, ptr @global_var_9c070, align 8
  %5 = call i32 (ptr, ptr, ...) @fscanf(ptr %4, ptr @global_var_68358, ptr nonnull %stack_var_-24)
  %.pre = load i32, ptr @global_var_9c06c, align 4
  %.pre3 = load i32, ptr %stack_var_-24, align 4
  %6 = icmp eq i32 %.pre, 5
  %7 = icmp eq i1 %6, false
  %8 = icmp eq i32 %.pre3, 0
  %or.cond = or i1 %7, %8
  br i1 %or.cond, label %dec_label_pc_158a8, label %dec_label_pc_15896

dec_label_pc_15896:                               ; preds = %dec_label_pc_15884
  %9 = mul i32 %.pre3, 2
  call void @printUnsignedLine(i32 %9)
  br label %dec_label_pc_158a8

dec_label_pc_158a8:                               ; preds = %dec_label_pc_15835, %dec_label_pc_15896, %dec_label_pc_15884
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_158bd, label %dec_label_pc_158b8

dec_label_pc_158b8:                               ; preds = %dec_label_pc_158a8
  call void @__stack_chk_fail()
  br label %dec_label_pc_158bd

dec_label_pc_158bd:                               ; preds = %dec_label_pc_158b8, %dec_label_pc_158a8
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

