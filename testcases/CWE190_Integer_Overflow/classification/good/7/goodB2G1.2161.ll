@global_var_676e8 = external constant [3 x i8]
@global_var_676eb = external constant [21 x i8]
@global_var_67700 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c070 = external global ptr
@global_var_9c01c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_f77c:
  %.reg2mem = alloca i32, align 4
  %stack_var_-24 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-24, align 4
  %1 = load i32, ptr @global_var_9c01c, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store i32 %1, ptr %.reg2mem, align 4
  br i1 %3, label %dec_label_pc_f7cb, label %dec_label_pc_f7a9

dec_label_pc_f7a9:                                ; preds = %dec_label_pc_f77c
  %4 = load ptr, ptr @global_var_9c070, align 8
  %5 = call i32 (ptr, ptr, ...) @fscanf(ptr %4, ptr @global_var_676e8, ptr nonnull %stack_var_-24)
  %.pr = load i32, ptr @global_var_9c01c, align 4
  store i32 %.pr, ptr %.reg2mem, align 4
  br label %dec_label_pc_f7cb

dec_label_pc_f7cb:                                ; preds = %dec_label_pc_f7a9, %dec_label_pc_f77c
  %.reload = load i32, ptr %.reg2mem, align 4
  %6 = icmp eq i32 %.reload, 5
  br i1 %6, label %dec_label_pc_f7e7, label %dec_label_pc_f7d6

dec_label_pc_f7d6:                                ; preds = %dec_label_pc_f7cb
  call void @printLine(ptr @global_var_676eb)
  br label %dec_label_pc_f813

dec_label_pc_f7e7:                                ; preds = %dec_label_pc_f7cb
  %7 = load i32, ptr %stack_var_-24, align 4
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %dec_label_pc_f804, label %dec_label_pc_f7ef

dec_label_pc_f7ef:                                ; preds = %dec_label_pc_f7e7
  %9 = add i32 %7, 1
  call void @printUnsignedLine(i32 %9)
  br label %dec_label_pc_f813

dec_label_pc_f804:                                ; preds = %dec_label_pc_f7e7
  call void @printLine(ptr @global_var_67700)
  br label %dec_label_pc_f813

dec_label_pc_f813:                                ; preds = %dec_label_pc_f804, %dec_label_pc_f7ef, %dec_label_pc_f7d6
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_f828, label %dec_label_pc_f823

dec_label_pc_f823:                                ; preds = %dec_label_pc_f813
  call void @__stack_chk_fail()
  br label %dec_label_pc_f828

dec_label_pc_f828:                                ; preds = %dec_label_pc_f823, %dec_label_pc_f813
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

