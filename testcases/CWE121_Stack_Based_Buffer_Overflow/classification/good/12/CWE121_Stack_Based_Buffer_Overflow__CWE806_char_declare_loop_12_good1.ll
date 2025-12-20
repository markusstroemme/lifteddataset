define void @anon0() local_unnamed_addr {
dec_label_pc_3e63a:
  %.reg2mem = alloca i64, align 8
  %stack_var_-184 = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %stack_var_-120 to ptr
  %2 = call i32 @globalReturnsTrueOrFalse()
  %3 = call ptr @memset(ptr nonnull %stack_var_-120, i32 65, i32 49)
  %4 = ptrtoint ptr %stack_var_-120 to i64
  %5 = add i64 %4, 49
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  store i64 0, ptr %stack_var_-184, align 8
  %7 = call i32 @strlen(ptr nonnull %1)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %dec_label_pc_3e76b, label %dec_label_pc_3e72c.lr.ph

dec_label_pc_3e72c.lr.ph:                         ; preds = %dec_label_pc_3e63a
  %9 = sext i32 %7 to i64
  %10 = ptrtoint ptr %stack_var_-184 to i64
  store i64 0, ptr %.reg2mem, align 8
  br label %dec_label_pc_3e72c

dec_label_pc_3e72c:                               ; preds = %dec_label_pc_3e72c.lr.ph, %dec_label_pc_3e72c
  %.reload = load i64, ptr %.reg2mem, align 8
  %11 = add i64 %.reload, %4
  %12 = inttoptr i64 %11 to ptr
  %13 = load i8, ptr %12, align 1
  %14 = add i64 %.reload, %10
  %15 = inttoptr i64 %14 to ptr
  store i8 %13, ptr %15, align 1
  %16 = add nuw i64 %.reload, 1
  %17 = icmp ult i64 %16, %9
  store i64 %16, ptr %.reg2mem, align 8
  br i1 %17, label %dec_label_pc_3e72c, label %dec_label_pc_3e76b

dec_label_pc_3e76b:                               ; preds = %dec_label_pc_3e72c, %dec_label_pc_3e63a
  call void @printLine(ptr nonnull %1)
  %18 = call i64 @__readfsqword(i64 40)
  %19 = icmp eq i64 %0, %18
  br i1 %19, label %dec_label_pc_3e793, label %dec_label_pc_3e78e

dec_label_pc_3e78e:                               ; preds = %dec_label_pc_3e76b
  call void @__stack_chk_fail()
  br label %dec_label_pc_3e793

dec_label_pc_3e793:                               ; preds = %dec_label_pc_3e78e, %dec_label_pc_3e76b
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_79be7:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_79c0a, label %dec_label_pc_79bfe

dec_label_pc_79bfe:                               ; preds = %dec_label_pc_79be7
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_79c0a

dec_label_pc_79c0a:                               ; preds = %dec_label_pc_79bfe, %dec_label_pc_79be7
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_7a115:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @rand() local_unnamed_addr

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

