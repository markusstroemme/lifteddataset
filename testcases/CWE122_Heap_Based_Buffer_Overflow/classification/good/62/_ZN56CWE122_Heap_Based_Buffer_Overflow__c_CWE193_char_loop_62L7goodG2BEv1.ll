@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_9ca18:
  %rax.0.reg2mem = alloca i64, align 8
  %.lcssa.reg2mem = alloca ptr, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %.reg2mem = alloca ptr, align 8
  %stack_var_-27 = alloca i64, align 8
  %stack_var_-56 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store ptr null, ptr %stack_var_-56, align 8
  %1 = call i64 @anon1(ptr nonnull %stack_var_-56)
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %2 = bitcast ptr %stack_var_-27 to ptr
  %3 = call i32 @strlen(ptr nonnull %2)
  %4 = sext i32 %3 to i64
  %5 = add nsw i64 %4, 1
  %6 = icmp eq i64 %5, 0
  %7 = load ptr, ptr %stack_var_-56, align 8
  store ptr %7, ptr %.lcssa.reg2mem, align 8
  br i1 %6, label %dec_label_pc_9caa7, label %dec_label_pc_9ca79.lr.ph

dec_label_pc_9ca79.lr.ph:                         ; preds = %dec_label_pc_9ca18
  %8 = ptrtoint ptr %stack_var_-27 to i64
  store ptr %7, ptr %.reg2mem, align 8
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_9ca79

dec_label_pc_9ca79:                               ; preds = %dec_label_pc_9ca79, %dec_label_pc_9ca79.lr.ph
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %.reload = load ptr, ptr %.reg2mem, align 8
  %9 = ptrtoint ptr %.reload to i64
  %10 = add i64 %storemerge2.reload, %9
  %11 = add i64 %storemerge2.reload, %8
  %12 = inttoptr i64 %11 to ptr
  %13 = load i8, ptr %12, align 1
  %14 = inttoptr i64 %10 to ptr
  store i8 %13, ptr %14, align 1
  %15 = add nuw i64 %storemerge2.reload, 1
  %16 = load ptr, ptr %stack_var_-56, align 8
  %exitcond = icmp eq i64 %15, %5
  store ptr %16, ptr %.reg2mem, align 8
  store i64 %15, ptr %storemerge2.reg2mem, align 8
  store ptr %16, ptr %.lcssa.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_9caa7, label %dec_label_pc_9ca79

dec_label_pc_9caa7:                               ; preds = %dec_label_pc_9ca79, %dec_label_pc_9ca18
  %.lcssa.reload = load ptr, ptr %.lcssa.reg2mem, align 8
  call void @printLine(ptr %.lcssa.reload)
  %17 = load ptr, ptr %stack_var_-56, align 8
  %18 = bitcast ptr %17 to ptr
  call void @free(ptr %18)
  %19 = call i64 @__readfsqword(i64 40)
  %20 = icmp eq i64 %0, %19
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %20, label %dec_label_pc_9cad4, label %dec_label_pc_9cacf

dec_label_pc_9cacf:                               ; preds = %dec_label_pc_9caa7
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_9cad4

dec_label_pc_9cad4:                               ; preds = %dec_label_pc_9cacf, %dec_label_pc_9caa7
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_9cb23:
  %0 = call ptr @malloc(i32 11)
  %1 = ptrtoint ptr %0 to i64
  %2 = bitcast ptr %arg1 to ptr
  store i64 %1, ptr %2, align 8
  ret i64 11
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

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

