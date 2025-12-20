@0 = external global i32

define i64 @anon0(ptr %arg1) local_unnamed_addr {
dec_label_pc_6fb5e:
  %0 = ptrtoint ptr %arg1 to i64
  %1 = bitcast ptr %arg1 to ptr
  %2 = call ptr @memset(ptr %1, i32 65, i32 49)
  %3 = add i64 %0, 49
  %4 = inttoptr i64 %3 to ptr
  store i8 0, ptr %4, align 1
  ret i64 %3
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_6fb98:
  %rax.0.reg2mem = alloca i64, align 8
  %.lcssa.reg2mem = alloca ptr, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %.reg2mem = alloca ptr, align 8
  %stack_var_-184 = alloca i64, align 8
  %stack_var_-208 = alloca ptr, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %stack_var_-120 to ptr
  store ptr %1, ptr %stack_var_-208, align 8
  %2 = call i64 @anon0(ptr nonnull %stack_var_-208)
  store i64 0, ptr %stack_var_-184, align 8
  %3 = load ptr, ptr %stack_var_-208, align 8
  %4 = call i32 @strlen(ptr %3)
  %5 = icmp eq i32 %4, 0
  %6 = load ptr, ptr %stack_var_-208, align 8
  store ptr %6, ptr %.lcssa.reg2mem, align 8
  br i1 %5, label %dec_label_pc_6fc7a, label %dec_label_pc_6fc3b.lr.ph

dec_label_pc_6fc3b.lr.ph:                         ; preds = %dec_label_pc_6fb98
  %7 = sext i32 %4 to i64
  %8 = ptrtoint ptr %stack_var_-184 to i64
  store ptr %6, ptr %.reg2mem, align 8
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_6fc3b

dec_label_pc_6fc3b:                               ; preds = %dec_label_pc_6fc3b.lr.ph, %dec_label_pc_6fc3b
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %.reload = load ptr, ptr %.reg2mem, align 8
  %9 = ptrtoint ptr %.reload to i64
  %10 = add i64 %storemerge2.reload, %9
  %11 = inttoptr i64 %10 to ptr
  %12 = load i8, ptr %11, align 1
  %13 = add i64 %storemerge2.reload, %8
  %14 = inttoptr i64 %13 to ptr
  store i8 %12, ptr %14, align 1
  %15 = add nuw i64 %storemerge2.reload, 1
  %16 = icmp ult i64 %15, %7
  %17 = load ptr, ptr %stack_var_-208, align 8
  store ptr %17, ptr %.reg2mem, align 8
  store i64 %15, ptr %storemerge2.reg2mem, align 8
  store ptr %17, ptr %.lcssa.reg2mem, align 8
  br i1 %16, label %dec_label_pc_6fc3b, label %dec_label_pc_6fc7a

dec_label_pc_6fc7a:                               ; preds = %dec_label_pc_6fc3b, %dec_label_pc_6fb98
  %.lcssa.reload = load ptr, ptr %.lcssa.reg2mem, align 8
  call void @printLine(ptr %.lcssa.reload)
  %18 = call i64 @__readfsqword(i64 40)
  %19 = icmp eq i64 %0, %18
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %19, label %dec_label_pc_6fca2, label %dec_label_pc_6fc9d

dec_label_pc_6fc9d:                               ; preds = %dec_label_pc_6fc7a
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_6fca2

dec_label_pc_6fca2:                               ; preds = %dec_label_pc_6fc9d, %dec_label_pc_6fc7a
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
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

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

