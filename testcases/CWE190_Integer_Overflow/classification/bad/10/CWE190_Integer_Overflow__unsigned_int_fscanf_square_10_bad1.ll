@global_var_68c78 = external constant [3 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c070 = external global ptr
@global_var_9c068 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_19e7f:
  %stack_var_-24 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-24, align 4
  %1 = load i32, ptr @global_var_9c068, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_19eed, label %dec_label_pc_19ecd

dec_label_pc_19ecd:                               ; preds = %dec_label_pc_19e7f
  %3 = load ptr, ptr @global_var_9c070, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_68c78, ptr nonnull %stack_var_-24)
  %.pr = load i32, ptr @global_var_9c068, align 4
  %5 = icmp eq i32 %.pr, 0
  br i1 %5, label %dec_label_pc_19eed, label %dec_label_pc_19ed7

dec_label_pc_19ed7:                               ; preds = %dec_label_pc_19ecd
  %6 = load i32, ptr %stack_var_-24, align 4
  %7 = mul i32 %6, %6
  call void @printUnsignedLine(i32 %7)
  br label %dec_label_pc_19eed

dec_label_pc_19eed:                               ; preds = %dec_label_pc_19e7f, %dec_label_pc_19ed7, %dec_label_pc_19ecd
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %0, %8
  br i1 %9, label %dec_label_pc_19f02, label %dec_label_pc_19efd

dec_label_pc_19efd:                               ; preds = %dec_label_pc_19eed
  call void @__stack_chk_fail()
  br label %dec_label_pc_19f02

dec_label_pc_19f02:                               ; preds = %dec_label_pc_19efd, %dec_label_pc_19eed
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

