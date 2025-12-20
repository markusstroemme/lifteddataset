@global_var_68188 = external constant [3 x i8]
@global_var_6818b = external constant [21 x i8]
@global_var_681a0 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c070 = external global ptr

define i32 @staticReturnsTrue.342() local_unnamed_addr {
dec_label_pc_147cd:
  ret i32 1
}

define i32 @staticReturnsFalse.343() local_unnamed_addr {
dec_label_pc_147dc:
  ret i32 0
}

define void @anon0() local_unnamed_addr {
dec_label_pc_1487b:
  %stack_var_-24 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-24, align 4
  %1 = call i32 @staticReturnsTrue.342()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_148cd, label %dec_label_pc_148ab

dec_label_pc_148ab:                               ; preds = %dec_label_pc_1487b
  %3 = load ptr, ptr @global_var_9c070, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_68188, ptr nonnull %stack_var_-24)
  br label %dec_label_pc_148cd

dec_label_pc_148cd:                               ; preds = %dec_label_pc_148ab, %dec_label_pc_1487b
  %5 = call i32 @staticReturnsFalse.343()
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %dec_label_pc_148ec, label %dec_label_pc_148db

dec_label_pc_148db:                               ; preds = %dec_label_pc_148cd
  call void @printLine(ptr @global_var_6818b)
  br label %dec_label_pc_14920

dec_label_pc_148ec:                               ; preds = %dec_label_pc_148cd
  %7 = load i32, ptr %stack_var_-24, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %dec_label_pc_14920, label %dec_label_pc_148f3

dec_label_pc_148f3:                               ; preds = %dec_label_pc_148ec
  %9 = icmp ult i32 %7, 2147483647
  br i1 %9, label %dec_label_pc_148fd, label %dec_label_pc_14911

dec_label_pc_148fd:                               ; preds = %dec_label_pc_148f3
  %10 = mul i32 %7, 2
  call void @printUnsignedLine(i32 %10)
  br label %dec_label_pc_14920

dec_label_pc_14911:                               ; preds = %dec_label_pc_148f3
  call void @printLine(ptr @global_var_681a0)
  br label %dec_label_pc_14920

dec_label_pc_14920:                               ; preds = %dec_label_pc_14911, %dec_label_pc_148fd, %dec_label_pc_148ec, %dec_label_pc_148db
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_14935, label %dec_label_pc_14930

dec_label_pc_14930:                               ; preds = %dec_label_pc_14920
  call void @__stack_chk_fail()
  br label %dec_label_pc_14935

dec_label_pc_14935:                               ; preds = %dec_label_pc_14930, %dec_label_pc_14920
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

