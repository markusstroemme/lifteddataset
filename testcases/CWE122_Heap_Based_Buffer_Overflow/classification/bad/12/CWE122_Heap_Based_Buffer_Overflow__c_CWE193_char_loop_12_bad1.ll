define void @anon0() local_unnamed_addr {
dec_label_pc_66c29:
  %storemerge2.reg2mem = alloca i64, align 8
  %stack_var_-56.0.in.reg2mem = alloca ptr, align 8
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_66c79, label %dec_label_pc_66c5a

dec_label_pc_66c5a:                               ; preds = %dec_label_pc_66c29
  %3 = call ptr @malloc(i32 10)
  %4 = icmp eq ptr %3, null
  %5 = icmp eq i1 %4, false
  store ptr %3, ptr %stack_var_-56.0.in.reg2mem, align 8
  br i1 %5, label %dec_label_pc_66c98, label %dec_label_pc_66c6f

dec_label_pc_66c6f:                               ; preds = %dec_label_pc_66c5a
  call void @exit(i32 -1)
  unreachable

dec_label_pc_66c79:                               ; preds = %dec_label_pc_66c29
  %6 = call ptr @malloc(i32 11)
  %7 = icmp eq ptr %6, null
  %8 = icmp eq i1 %7, false
  store ptr %6, ptr %stack_var_-56.0.in.reg2mem, align 8
  br i1 %8, label %dec_label_pc_66c98, label %dec_label_pc_66c8e

dec_label_pc_66c8e:                               ; preds = %dec_label_pc_66c79
  call void @exit(i32 -1)
  unreachable

dec_label_pc_66c98:                               ; preds = %dec_label_pc_66c79, %dec_label_pc_66c5a
  %stack_var_-56.0.in.reload = load ptr, ptr %stack_var_-56.0.in.reg2mem, align 8
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %9 = bitcast ptr %stack_var_-27 to ptr
  %10 = call i32 @strlen(ptr nonnull %9)
  %11 = sext i32 %10 to i64
  %12 = add nsw i64 %11, 1
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %dec_label_pc_66cf8, label %dec_label_pc_66cca.lr.ph

dec_label_pc_66cca.lr.ph:                         ; preds = %dec_label_pc_66c98
  %14 = ptrtoint ptr %stack_var_-56.0.in.reload to i64
  %15 = ptrtoint ptr %stack_var_-27 to i64
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_66cca

dec_label_pc_66cca:                               ; preds = %dec_label_pc_66cca, %dec_label_pc_66cca.lr.ph
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %16 = add i64 %storemerge2.reload, %14
  %17 = add i64 %storemerge2.reload, %15
  %18 = inttoptr i64 %17 to ptr
  %19 = load i8, ptr %18, align 1
  %20 = inttoptr i64 %16 to ptr
  store i8 %19, ptr %20, align 1
  %21 = add nuw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %21, %12
  store i64 %21, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_66cf8, label %dec_label_pc_66cca

dec_label_pc_66cf8:                               ; preds = %dec_label_pc_66cca, %dec_label_pc_66c98
  %stack_var_-56.0 = bitcast ptr %stack_var_-56.0.in.reload to ptr
  call void @printLine(ptr %stack_var_-56.0)
  call void @free(ptr %stack_var_-56.0.in.reload)
  %22 = call i64 @__readfsqword(i64 40)
  %23 = icmp eq i64 %0, %22
  br i1 %23, label %dec_label_pc_66d25, label %dec_label_pc_66d20

dec_label_pc_66d20:                               ; preds = %dec_label_pc_66cf8
  call void @__stack_chk_fail()
  br label %dec_label_pc_66d25

dec_label_pc_66d25:                               ; preds = %dec_label_pc_66d20, %dec_label_pc_66cf8
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

