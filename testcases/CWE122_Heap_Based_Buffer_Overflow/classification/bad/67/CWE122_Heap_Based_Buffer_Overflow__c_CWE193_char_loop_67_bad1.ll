define void @anon0() local_unnamed_addr {
dec_label_pc_6a49e:
  %0 = call ptr @malloc(i32 10)
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_6a4d1, label %dec_label_pc_6a4c7

dec_label_pc_6a4c7:                               ; preds = %dec_label_pc_6a49e
  call void @exit(i32 -1)
  unreachable

dec_label_pc_6a4d1:                               ; preds = %dec_label_pc_6a49e
  %3 = ptrtoint ptr %0 to i64
  call void @anon1(i64 %3)
  ret void
}

define void @anon1(i64 %myStruct) local_unnamed_addr {
dec_label_pc_6a547:
  %.reg2mem = alloca i64, align 8
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %1 = bitcast ptr %stack_var_-27 to ptr
  %2 = call i32 @strlen(ptr nonnull %1)
  %3 = sext i32 %2 to i64
  %4 = add nsw i64 %3, 1
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %dec_label_pc_6a5ce, label %dec_label_pc_6a5a0.lr.ph

dec_label_pc_6a5a0.lr.ph:                         ; preds = %dec_label_pc_6a547
  %6 = ptrtoint ptr %stack_var_-27 to i64
  store i64 0, ptr %.reg2mem, align 8
  br label %dec_label_pc_6a5a0

dec_label_pc_6a5a0:                               ; preds = %dec_label_pc_6a5a0, %dec_label_pc_6a5a0.lr.ph
  %.reload = load i64, ptr %.reg2mem, align 8
  %7 = add i64 %.reload, %myStruct
  %8 = add i64 %.reload, %6
  %9 = inttoptr i64 %8 to ptr
  %10 = load i8, ptr %9, align 1
  %11 = inttoptr i64 %7 to ptr
  store i8 %10, ptr %11, align 1
  %12 = add nuw i64 %.reload, 1
  %exitcond = icmp eq i64 %12, %4
  store i64 %12, ptr %.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_6a5ce, label %dec_label_pc_6a5a0

dec_label_pc_6a5ce:                               ; preds = %dec_label_pc_6a5a0, %dec_label_pc_6a547
  %13 = inttoptr i64 %myStruct to ptr
  call void @printLine(ptr %13)
  %14 = inttoptr i64 %myStruct to ptr
  call void @free(ptr %14)
  %15 = call i64 @__readfsqword(i64 40)
  %16 = icmp eq i64 %0, %15
  br i1 %16, label %dec_label_pc_6a5fb, label %dec_label_pc_6a5f6

dec_label_pc_6a5f6:                               ; preds = %dec_label_pc_6a5ce
  call void @__stack_chk_fail()
  br label %dec_label_pc_6a5fb

dec_label_pc_6a5fb:                               ; preds = %dec_label_pc_6a5f6, %dec_label_pc_6a5ce
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

