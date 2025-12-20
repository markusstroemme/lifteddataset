define void @anon0() local_unnamed_addr {
dec_label_pc_65198:
  %.reg2mem = alloca i64, align 8
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 11)
  %2 = icmp eq ptr %1, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_651da, label %dec_label_pc_651d0

dec_label_pc_651d0:                               ; preds = %dec_label_pc_65198
  call void @exit(i32 -1)
  unreachable

dec_label_pc_651da:                               ; preds = %dec_label_pc_65198
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %4 = bitcast ptr %stack_var_-27 to ptr
  %5 = call i32 @strlen(ptr nonnull %4)
  %6 = sext i32 %5 to i64
  %7 = add nsw i64 %6, 1
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %dec_label_pc_6523a, label %dec_label_pc_6520c.lr.ph

dec_label_pc_6520c.lr.ph:                         ; preds = %dec_label_pc_651da
  %9 = ptrtoint ptr %1 to i64
  %10 = ptrtoint ptr %stack_var_-27 to i64
  store i64 0, ptr %.reg2mem, align 8
  br label %dec_label_pc_6520c

dec_label_pc_6520c:                               ; preds = %dec_label_pc_6520c, %dec_label_pc_6520c.lr.ph
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
  br i1 %exitcond, label %dec_label_pc_6523a, label %dec_label_pc_6520c

dec_label_pc_6523a:                               ; preds = %dec_label_pc_6520c, %dec_label_pc_651da
  %17 = bitcast ptr %1 to ptr
  call void @printLine(ptr %17)
  call void @free(ptr %1)
  %18 = call i64 @__readfsqword(i64 40)
  %19 = icmp eq i64 %0, %18
  br i1 %19, label %dec_label_pc_65267, label %dec_label_pc_65262

dec_label_pc_65262:                               ; preds = %dec_label_pc_6523a
  call void @__stack_chk_fail()
  br label %dec_label_pc_65267

dec_label_pc_65267:                               ; preds = %dec_label_pc_65262, %dec_label_pc_6523a
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

