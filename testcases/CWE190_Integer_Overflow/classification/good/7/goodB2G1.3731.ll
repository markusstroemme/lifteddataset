@global_var_83368 = external constant [4 x i8]
@global_var_8336c = external constant [21 x i8]
@global_var_83388 = external constant [54 x i8]
@global_var_8c829 = external constant [5 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr
@global_var_bc02c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_167b1:
  %.reg2mem = alloca i32, align 4
  %stack_var_-32 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-32, align 8
  %1 = load i32, ptr @global_var_bc02c, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store i32 %1, ptr %.reg2mem, align 4
  br i1 %3, label %dec_label_pc_16801, label %dec_label_pc_167df

dec_label_pc_167df:                               ; preds = %dec_label_pc_167b1
  %4 = load ptr, ptr @global_var_bc0b0, align 8
  %5 = call i32 (ptr, ptr, ...) @fscanf(ptr %4, ptr @global_var_83368, ptr nonnull %stack_var_-32)
  %.pr = load i32, ptr @global_var_bc02c, align 4
  store i32 %.pr, ptr %.reg2mem, align 4
  br label %dec_label_pc_16801

dec_label_pc_16801:                               ; preds = %dec_label_pc_167df, %dec_label_pc_167b1
  %.reload = load i32, ptr %.reg2mem, align 4
  %6 = icmp eq i32 %.reload, 5
  br i1 %6, label %dec_label_pc_1681d, label %dec_label_pc_1680c

dec_label_pc_1680c:                               ; preds = %dec_label_pc_16801
  call void @printLine(ptr @global_var_8336c)
  br label %dec_label_pc_16861

dec_label_pc_1681d:                               ; preds = %dec_label_pc_16801
  %7 = load i64, ptr %stack_var_-32, align 8
  %8 = icmp eq i64 %7, 9223372036854775807
  br i1 %8, label %dec_label_pc_16852, label %dec_label_pc_16830

dec_label_pc_16830:                               ; preds = %dec_label_pc_1681d
  %9 = add i64 %7, 1
  store i64 %9, ptr %stack_var_-32, align 8
  call void @printLongLongLine(i64 %9)
  br label %dec_label_pc_16861

dec_label_pc_16852:                               ; preds = %dec_label_pc_1681d
  call void @printLine(ptr @global_var_83388)
  br label %dec_label_pc_16861

dec_label_pc_16861:                               ; preds = %dec_label_pc_16852, %dec_label_pc_16830, %dec_label_pc_1680c
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_16876, label %dec_label_pc_16871

dec_label_pc_16871:                               ; preds = %dec_label_pc_16861
  call void @__stack_chk_fail()
  br label %dec_label_pc_16876

dec_label_pc_16876:                               ; preds = %dec_label_pc_16871, %dec_label_pc_16861
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6a14a:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6a16d, label %dec_label_pc_6a161

dec_label_pc_6a161:                               ; preds = %dec_label_pc_6a14a
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6a16d

dec_label_pc_6a16d:                               ; preds = %dec_label_pc_6a161, %dec_label_pc_6a14a
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_6a268:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c829, i32 %0)
  ret void
}

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

