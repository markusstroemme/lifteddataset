define void @anon0() local_unnamed_addr {
dec_label_pc_67657:
  %.reg2mem = alloca i64, align 8
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 10)
  %2 = icmp eq ptr %1, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_67699, label %dec_label_pc_6768f

dec_label_pc_6768f:                               ; preds = %dec_label_pc_67657
  call void @exit(i32 -1)
  unreachable

dec_label_pc_67699:                               ; preds = %dec_label_pc_67657
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %4 = bitcast ptr %stack_var_-27 to ptr
  %5 = call i32 @strlen(ptr nonnull %4)
  %6 = sext i32 %5 to i64
  %7 = add nsw i64 %6, 1
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %dec_label_pc_676fa, label %dec_label_pc_676cc.lr.ph

dec_label_pc_676cc.lr.ph:                         ; preds = %dec_label_pc_67699
  %9 = ptrtoint ptr %1 to i64
  %10 = ptrtoint ptr %stack_var_-27 to i64
  store i64 0, ptr %.reg2mem, align 8
  br label %dec_label_pc_676cc

dec_label_pc_676cc:                               ; preds = %dec_label_pc_676cc, %dec_label_pc_676cc.lr.ph
  %.reload = load i64, ptr %.reg2mem, align 8
  %11 = add i64 %.reload, %9
  %12 = add i64 %.reload, %10
  %13 = inttoptr i64 %12 to ptr
  %14 = load i8, ptr %13, align 1
  %15 = inttoptr i64 %11 to ptr
  store i8 %14, ptr %15, align 1
  %16 = add nuw i64 %.reload, 1
  %exitcond = icmp eq i64 %16, %7
  store i64 %16, ptr %.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_676fa, label %dec_label_pc_676cc

dec_label_pc_676fa:                               ; preds = %dec_label_pc_676cc, %dec_label_pc_67699
  %17 = bitcast ptr %1 to ptr
  call void @printLine(ptr %17)
  call void @free(ptr %1)
  %18 = call i64 @__readfsqword(i64 40)
  %19 = icmp eq i64 %0, %18
  br i1 %19, label %dec_label_pc_67727, label %dec_label_pc_67722

dec_label_pc_67722:                               ; preds = %dec_label_pc_676fa
  call void @__stack_chk_fail()
  br label %dec_label_pc_67727

dec_label_pc_67727:                               ; preds = %dec_label_pc_67722, %dec_label_pc_676fa
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_9fe8c:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_9feaf, label %dec_label_pc_9fea3

dec_label_pc_9fea3:                               ; preds = %dec_label_pc_9fe8c
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_9feaf

dec_label_pc_9feaf:                               ; preds = %dec_label_pc_9fea3, %dec_label_pc_9fe8c
  ret void
}

declare i32 @strlen(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

