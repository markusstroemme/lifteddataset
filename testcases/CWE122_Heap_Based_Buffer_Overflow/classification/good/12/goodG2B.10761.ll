define void @anon0() local_unnamed_addr {
dec_label_pc_66d27:
  %storemerge2.reg2mem = alloca i64, align 8
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  %3 = call ptr @malloc(i32 11)
  %4 = icmp eq ptr %3, null
  %5 = icmp eq i1 %4, false
  br i1 %2, label %dec_label_pc_66d77, label %dec_label_pc_66d58

dec_label_pc_66d58:                               ; preds = %dec_label_pc_66d27
  br i1 %5, label %dec_label_pc_66d96, label %dec_label_pc_66d6d

dec_label_pc_66d6d:                               ; preds = %dec_label_pc_66d58
  call void @exit(i32 -1)
  unreachable

dec_label_pc_66d77:                               ; preds = %dec_label_pc_66d27
  br i1 %5, label %dec_label_pc_66d96, label %dec_label_pc_66d8c

dec_label_pc_66d8c:                               ; preds = %dec_label_pc_66d77
  call void @exit(i32 -1)
  unreachable

dec_label_pc_66d96:                               ; preds = %dec_label_pc_66d77, %dec_label_pc_66d58
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %6 = bitcast ptr %stack_var_-27 to ptr
  %7 = call i32 @strlen(ptr nonnull %6)
  %8 = sext i32 %7 to i64
  %9 = add nsw i64 %8, 1
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %dec_label_pc_66df6, label %dec_label_pc_66dc8.lr.ph

dec_label_pc_66dc8.lr.ph:                         ; preds = %dec_label_pc_66d96
  %11 = ptrtoint ptr %3 to i64
  %12 = ptrtoint ptr %stack_var_-27 to i64
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_66dc8

dec_label_pc_66dc8:                               ; preds = %dec_label_pc_66dc8, %dec_label_pc_66dc8.lr.ph
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %13 = add i64 %storemerge2.reload, %11
  %14 = add i64 %storemerge2.reload, %12
  %15 = inttoptr i64 %14 to ptr
  %16 = load i8, ptr %15, align 1
  %17 = inttoptr i64 %13 to ptr
  store i8 %16, ptr %17, align 1
  %18 = add nuw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %18, %9
  store i64 %18, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_66df6, label %dec_label_pc_66dc8

dec_label_pc_66df6:                               ; preds = %dec_label_pc_66dc8, %dec_label_pc_66d96
  %19 = bitcast ptr %3 to ptr
  call void @printLine(ptr %19)
  call void @free(ptr %3)
  %20 = call i64 @__readfsqword(i64 40)
  %21 = icmp eq i64 %0, %20
  br i1 %21, label %dec_label_pc_66e23, label %dec_label_pc_66e1e

dec_label_pc_66e1e:                               ; preds = %dec_label_pc_66df6
  call void @__stack_chk_fail()
  br label %dec_label_pc_66e23

dec_label_pc_66e23:                               ; preds = %dec_label_pc_66e1e, %dec_label_pc_66df6
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

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_a03ba:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @rand() local_unnamed_addr

declare i32 @strlen(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

