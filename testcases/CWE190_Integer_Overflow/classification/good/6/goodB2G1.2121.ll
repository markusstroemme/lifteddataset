@global_var_67694 = external constant [3 x i8]
@global_var_676b0 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c070 = external global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_f4e5:
  %stack_var_-24 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-24, align 4
  %1 = load ptr, ptr @global_var_9c070, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_67694, ptr nonnull %stack_var_-24)
  %3 = load i32, ptr %stack_var_-24, align 4
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %dec_label_pc_f56b, label %dec_label_pc_f556

dec_label_pc_f556:                                ; preds = %dec_label_pc_f4e5
  %5 = add i32 %3, 1
  call void @printUnsignedLine(i32 %5)
  br label %dec_label_pc_f57a

dec_label_pc_f56b:                                ; preds = %dec_label_pc_f4e5
  call void @printLine(ptr @global_var_676b0)
  br label %dec_label_pc_f57a

dec_label_pc_f57a:                                ; preds = %dec_label_pc_f56b, %dec_label_pc_f556
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_f58f, label %dec_label_pc_f58a

dec_label_pc_f58a:                                ; preds = %dec_label_pc_f57a
  call void @__stack_chk_fail()
  br label %dec_label_pc_f58f

dec_label_pc_f58f:                                ; preds = %dec_label_pc_f58a, %dec_label_pc_f57a
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_54bd7:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_54bfa, label %dec_label_pc_54bee

dec_label_pc_54bee:                               ; preds = %dec_label_pc_54bd7
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_54bfa

dec_label_pc_54bfa:                               ; preds = %dec_label_pc_54bee, %dec_label_pc_54bd7
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

