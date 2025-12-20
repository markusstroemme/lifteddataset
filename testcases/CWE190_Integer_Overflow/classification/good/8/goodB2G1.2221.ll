@global_var_67738 = external constant [3 x i8]
@global_var_6773b = external constant [21 x i8]
@global_var_67750 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c070 = external global ptr

define i32 @staticReturnsTrue.220() local_unnamed_addr {
dec_label_pc_f997:
  ret i32 1
}

define i32 @staticReturnsFalse.221() local_unnamed_addr {
dec_label_pc_f9a6:
  ret i32 0
}

define void @anon0() local_unnamed_addr {
dec_label_pc_fa3f:
  %stack_var_-24 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-24, align 4
  %1 = call i32 @staticReturnsTrue.220()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_fa91, label %dec_label_pc_fa6f

dec_label_pc_fa6f:                                ; preds = %dec_label_pc_fa3f
  %3 = load ptr, ptr @global_var_9c070, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_67738, ptr nonnull %stack_var_-24)
  br label %dec_label_pc_fa91

dec_label_pc_fa91:                                ; preds = %dec_label_pc_fa6f, %dec_label_pc_fa3f
  %5 = call i32 @staticReturnsFalse.221()
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %dec_label_pc_fab0, label %dec_label_pc_fa9f

dec_label_pc_fa9f:                                ; preds = %dec_label_pc_fa91
  call void @printLine(ptr @global_var_6773b)
  br label %dec_label_pc_fadc

dec_label_pc_fab0:                                ; preds = %dec_label_pc_fa91
  %7 = load i32, ptr %stack_var_-24, align 4
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %dec_label_pc_facd, label %dec_label_pc_fab8

dec_label_pc_fab8:                                ; preds = %dec_label_pc_fab0
  %9 = add i32 %7, 1
  call void @printUnsignedLine(i32 %9)
  br label %dec_label_pc_fadc

dec_label_pc_facd:                                ; preds = %dec_label_pc_fab0
  call void @printLine(ptr @global_var_67750)
  br label %dec_label_pc_fadc

dec_label_pc_fadc:                                ; preds = %dec_label_pc_facd, %dec_label_pc_fab8, %dec_label_pc_fa9f
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_faf1, label %dec_label_pc_faec

dec_label_pc_faec:                                ; preds = %dec_label_pc_fadc
  call void @__stack_chk_fail()
  br label %dec_label_pc_faf1

dec_label_pc_faf1:                                ; preds = %dec_label_pc_faec, %dec_label_pc_fadc
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

