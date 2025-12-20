@global_var_676e8 = external constant [3 x i8]
@global_var_67700 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c070 = external global ptr
@global_var_9c01c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_f82a:
  %.reg2mem = alloca i32, align 4
  %stack_var_-24 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-24, align 4
  %1 = load i32, ptr @global_var_9c01c, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store i32 %1, ptr %.reg2mem, align 4
  br i1 %3, label %dec_label_pc_f879, label %dec_label_pc_f857

dec_label_pc_f857:                                ; preds = %dec_label_pc_f82a
  %4 = load ptr, ptr @global_var_9c070, align 8
  %5 = call i32 (ptr, ptr, ...) @fscanf(ptr %4, ptr @global_var_676e8, ptr nonnull %stack_var_-24)
  %.pre = load i32, ptr @global_var_9c01c, align 4
  store i32 %.pre, ptr %.reg2mem, align 4
  br label %dec_label_pc_f879

dec_label_pc_f879:                                ; preds = %dec_label_pc_f857, %dec_label_pc_f82a
  %.reload = load i32, ptr %.reg2mem, align 4
  %6 = icmp eq i32 %.reload, 5
  %7 = icmp eq i1 %6, false
  br i1 %7, label %dec_label_pc_f8b0, label %dec_label_pc_f884

dec_label_pc_f884:                                ; preds = %dec_label_pc_f879
  %8 = load i32, ptr %stack_var_-24, align 4
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %dec_label_pc_f8a1, label %dec_label_pc_f88c

dec_label_pc_f88c:                                ; preds = %dec_label_pc_f884
  %10 = add i32 %8, 1
  call void @printUnsignedLine(i32 %10)
  br label %dec_label_pc_f8b0

dec_label_pc_f8a1:                                ; preds = %dec_label_pc_f884
  call void @printLine(ptr @global_var_67700)
  br label %dec_label_pc_f8b0

dec_label_pc_f8b0:                                ; preds = %dec_label_pc_f8a1, %dec_label_pc_f88c, %dec_label_pc_f879
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_f8c5, label %dec_label_pc_f8c0

dec_label_pc_f8c0:                                ; preds = %dec_label_pc_f8b0
  call void @__stack_chk_fail()
  br label %dec_label_pc_f8c5

dec_label_pc_f8c5:                                ; preds = %dec_label_pc_f8c0, %dec_label_pc_f8b0
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

