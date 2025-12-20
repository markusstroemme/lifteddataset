define void @anon0() local_unnamed_addr {
dec_label_pc_6a23b:
  %stack_var_-56 = alloca i64, align 8
  %dataArray_-64 = alloca [5 x ptr], align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 10)
  %2 = bitcast ptr %1 to ptr
  %3 = insertvalue [5 x ptr] undef, ptr %2, 0
  store [5 x ptr] %3, ptr %dataArray_-64, align 8
  %4 = bitcast ptr %dataArray_-64 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = icmp eq i64 %5, 0
  %7 = icmp eq i1 %6, false
  br i1 %7, label %dec_label_pc_6a27d, label %dec_label_pc_6a273

dec_label_pc_6a273:                               ; preds = %dec_label_pc_6a23b
  call void @exit(i32 -1)
  unreachable

dec_label_pc_6a27d:                               ; preds = %dec_label_pc_6a23b
  %8 = bitcast ptr %stack_var_-56 to ptr
  call void @anon1(ptr nonnull %8)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_6a2a6, label %dec_label_pc_6a2a1

dec_label_pc_6a2a1:                               ; preds = %dec_label_pc_6a27d
  call void @__stack_chk_fail()
  br label %dec_label_pc_6a2a6

dec_label_pc_6a2a6:                               ; preds = %dec_label_pc_6a2a1, %dec_label_pc_6a27d
  ret void
}

define void @anon1(ptr %dataArray) local_unnamed_addr {
dec_label_pc_6a32a:
  %.reg2mem = alloca i64, align 8
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %dataArray to i64
  %2 = add i64 %1, 16
  %3 = inttoptr i64 %2 to ptr
  %4 = load i64, ptr %3, align 8
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %5 = bitcast ptr %stack_var_-27 to ptr
  %6 = call i32 @strlen(ptr nonnull %5)
  %7 = sext i32 %6 to i64
  %8 = add nsw i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %dec_label_pc_6a3b5, label %dec_label_pc_6a387.lr.ph

dec_label_pc_6a387.lr.ph:                         ; preds = %dec_label_pc_6a32a
  %10 = ptrtoint ptr %stack_var_-27 to i64
  store i64 0, ptr %.reg2mem, align 8
  br label %dec_label_pc_6a387

dec_label_pc_6a387:                               ; preds = %dec_label_pc_6a387, %dec_label_pc_6a387.lr.ph
  %.reload = load i64, ptr %.reg2mem, align 8
  %11 = add i64 %.reload, %4
  %12 = add i64 %.reload, %10
  %13 = inttoptr i64 %12 to ptr
  %14 = load i8, ptr %13, align 1
  %15 = inttoptr i64 %11 to ptr
  store i8 %14, ptr %15, align 1
  %16 = add nuw i64 %.reload, 1
  %exitcond = icmp eq i64 %16, %8
  store i64 %16, ptr %.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_6a3b5, label %dec_label_pc_6a387

dec_label_pc_6a3b5:                               ; preds = %dec_label_pc_6a387, %dec_label_pc_6a32a
  %17 = inttoptr i64 %4 to ptr
  call void @printLine(ptr %17)
  %18 = inttoptr i64 %4 to ptr
  call void @free(ptr %18)
  %19 = call i64 @__readfsqword(i64 40)
  %20 = icmp eq i64 %0, %19
  br i1 %20, label %dec_label_pc_6a3e2, label %dec_label_pc_6a3dd

dec_label_pc_6a3dd:                               ; preds = %dec_label_pc_6a3b5
  call void @__stack_chk_fail()
  br label %dec_label_pc_6a3e2

dec_label_pc_6a3e2:                               ; preds = %dec_label_pc_6a3dd, %dec_label_pc_6a3b5
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

