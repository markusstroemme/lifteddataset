@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_7c71b:
  %0 = call i64 @_Znam(i64 11)
  %1 = inttoptr i64 %0 to ptr
  %2 = call i64 @anon1(ptr %1)
  ret i64 %2
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_7c77b:
  %0 = call i64 @anon2(ptr %arg1)
  ret i64 %0
}

define i64 @anon2(ptr %arg1) local_unnamed_addr {
dec_label_pc_7c84f:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-27 = alloca i64, align 8
  %2 = call i64 @__readfsqword(i64 40)
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %3 = bitcast ptr %stack_var_-27 to ptr
  %4 = call i32 @strlen(ptr nonnull %3)
  %5 = sext i32 %4 to i64
  %6 = add nsw i64 %5, 1
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %dec_label_pc_7c8ce, label %dec_label_pc_7c8a0.lr.ph

dec_label_pc_7c8a0.lr.ph:                         ; preds = %dec_label_pc_7c84f
  %8 = ptrtoint ptr %arg1 to i64
  %9 = ptrtoint ptr %stack_var_-27 to i64
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_7c8a0

dec_label_pc_7c8a0:                               ; preds = %dec_label_pc_7c8a0, %dec_label_pc_7c8a0.lr.ph
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %10 = add i64 %storemerge2.reload, %8
  %11 = add i64 %storemerge2.reload, %9
  %12 = inttoptr i64 %11 to ptr
  %13 = load i8, ptr %12, align 1
  %14 = inttoptr i64 %10 to ptr
  store i8 %13, ptr %14, align 1
  %15 = add nuw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %15, %6
  store i64 %15, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_7c8ce, label %dec_label_pc_7c8a0

dec_label_pc_7c8ce:                               ; preds = %dec_label_pc_7c8a0, %dec_label_pc_7c84f
  call void @printLine(ptr %arg1)
  %16 = icmp eq ptr %arg1, null
  br i1 %16, label %dec_label_pc_7c8ed, label %dec_label_pc_7c8e1

dec_label_pc_7c8e1:                               ; preds = %dec_label_pc_7c8ce
  %17 = bitcast ptr %arg1 to ptr
  %18 = and i64 %1, 4294967295
  %19 = inttoptr i64 %18 to ptr
  call void @_ZdaPv(ptr %17, ptr %19)
  br label %dec_label_pc_7c8ed

dec_label_pc_7c8ed:                               ; preds = %dec_label_pc_7c8e1, %dec_label_pc_7c8ce
  %20 = call i64 @__readfsqword(i64 40)
  %21 = icmp eq i64 %2, %20
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %21, label %dec_label_pc_7c902, label %dec_label_pc_7c8fd

dec_label_pc_7c8fd:                               ; preds = %dec_label_pc_7c8ed
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_7c902

dec_label_pc_7c902:                               ; preds = %dec_label_pc_7c8fd, %dec_label_pc_7c8ed
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_91bc4:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_91be7, label %dec_label_pc_91bdb

dec_label_pc_91bdb:                               ; preds = %dec_label_pc_91bc4
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_91be7

dec_label_pc_91be7:                               ; preds = %dec_label_pc_91bdb, %dec_label_pc_91bc4
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @strlen(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

