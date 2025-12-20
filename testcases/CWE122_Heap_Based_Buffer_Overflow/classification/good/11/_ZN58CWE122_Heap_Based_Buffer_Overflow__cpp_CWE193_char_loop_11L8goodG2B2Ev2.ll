@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_79e77:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %stack_var_-56.0.reg2mem = alloca ptr, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-27 = alloca i64, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = call i32 @globalReturnsTrue()
  %4 = icmp eq i32 %3, 0
  %5 = icmp eq i1 %4, false
  %6 = icmp eq i1 %5, false
  store ptr null, ptr %stack_var_-56.0.reg2mem, align 8
  br i1 %6, label %dec_label_pc_79eb6, label %dec_label_pc_79ea8

dec_label_pc_79ea8:                               ; preds = %dec_label_pc_79e77
  %7 = call i64 @_Znam(i64 11)
  %8 = inttoptr i64 %7 to ptr
  store ptr %8, ptr %stack_var_-56.0.reg2mem, align 8
  br label %dec_label_pc_79eb6

dec_label_pc_79eb6:                               ; preds = %dec_label_pc_79ea8, %dec_label_pc_79e77
  %stack_var_-56.0.reload = load ptr, ptr %stack_var_-56.0.reg2mem, align 8
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %9 = bitcast ptr %stack_var_-27 to ptr
  %10 = call i32 @strlen(ptr nonnull %9)
  %11 = sext i32 %10 to i64
  %12 = add nsw i64 %11, 1
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %dec_label_pc_79f16, label %dec_label_pc_79ee8.lr.ph

dec_label_pc_79ee8.lr.ph:                         ; preds = %dec_label_pc_79eb6
  %14 = ptrtoint ptr %stack_var_-56.0.reload to i64
  %15 = ptrtoint ptr %stack_var_-27 to i64
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_79ee8

dec_label_pc_79ee8:                               ; preds = %dec_label_pc_79ee8, %dec_label_pc_79ee8.lr.ph
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
  br i1 %exitcond, label %dec_label_pc_79f16, label %dec_label_pc_79ee8

dec_label_pc_79f16:                               ; preds = %dec_label_pc_79ee8, %dec_label_pc_79eb6
  call void @printLine(ptr %stack_var_-56.0.reload)
  %22 = icmp eq ptr %stack_var_-56.0.reload, null
  br i1 %22, label %dec_label_pc_79f35, label %dec_label_pc_79f29

dec_label_pc_79f29:                               ; preds = %dec_label_pc_79f16
  %23 = bitcast ptr %stack_var_-56.0.reload to ptr
  %24 = and i64 %1, 4294967295
  %25 = inttoptr i64 %24 to ptr
  call void @_ZdaPv(ptr %23, ptr %25)
  br label %dec_label_pc_79f35

dec_label_pc_79f35:                               ; preds = %dec_label_pc_79f29, %dec_label_pc_79f16
  %26 = call i64 @__readfsqword(i64 40)
  %27 = icmp eq i64 %2, %26
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %27, label %dec_label_pc_79f4a, label %dec_label_pc_79f45

dec_label_pc_79f45:                               ; preds = %dec_label_pc_79f35
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_79f4a

dec_label_pc_79f4a:                               ; preds = %dec_label_pc_79f45, %dec_label_pc_79f35
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

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_920d4:
  ret i32 1
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @strlen(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

