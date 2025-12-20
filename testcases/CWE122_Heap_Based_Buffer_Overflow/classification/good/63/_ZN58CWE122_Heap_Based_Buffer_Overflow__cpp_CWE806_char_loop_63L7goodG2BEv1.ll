@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_c5da:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 100)
  store i64 %1, ptr %stack_var_-24, align 8
  %2 = inttoptr i64 %1 to ptr
  %3 = call ptr @memset(ptr %2, i32 65, i32 49)
  %4 = add i64 %1, 49
  %5 = inttoptr i64 %4 to ptr
  store i8 0, ptr %5, align 1
  %6 = bitcast ptr %stack_var_-24 to ptr
  %7 = call i64 @anon1(ptr nonnull %6)
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %0, %8
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %9, label %dec_label_pc_c645, label %dec_label_pc_c640

dec_label_pc_c640:                                ; preds = %dec_label_pc_c5da
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_c645

dec_label_pc_c645:                                ; preds = %dec_label_pc_c640, %dec_label_pc_c5da
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_c735:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-72 = alloca i64, align 8
  %2 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-72, align 8
  %3 = bitcast ptr %arg1 to ptr
  %4 = call i32 @strlen(ptr %3)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %dec_label_pc_c7d9, label %dec_label_pc_c7af.lr.ph

dec_label_pc_c7af.lr.ph:                          ; preds = %dec_label_pc_c735
  %6 = sext i32 %4 to i64
  %7 = ptrtoint ptr %arg1 to i64
  %8 = ptrtoint ptr %stack_var_-72 to i64
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_c7af

dec_label_pc_c7af:                                ; preds = %dec_label_pc_c7af.lr.ph, %dec_label_pc_c7af
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %9 = add i64 %storemerge2.reload, %7
  %10 = inttoptr i64 %9 to ptr
  %11 = load i8, ptr %10, align 1
  %12 = add i64 %storemerge2.reload, %8
  %13 = inttoptr i64 %12 to ptr
  store i8 %11, ptr %13, align 1
  %14 = add nuw i64 %storemerge2.reload, 1
  %15 = icmp ult i64 %14, %6
  store i64 %14, ptr %storemerge2.reg2mem, align 8
  br i1 %15, label %dec_label_pc_c7af, label %dec_label_pc_c7d9

dec_label_pc_c7d9:                                ; preds = %dec_label_pc_c7af, %dec_label_pc_c735
  call void @printLine(ptr %3)
  %16 = icmp eq ptr %arg1, null
  br i1 %16, label %dec_label_pc_c7fc, label %dec_label_pc_c7f0

dec_label_pc_c7f0:                                ; preds = %dec_label_pc_c7d9
  %17 = bitcast ptr %arg1 to ptr
  %18 = and i64 %1, 4294967295
  %19 = inttoptr i64 %18 to ptr
  call void @_ZdaPv(ptr %17, ptr %19)
  br label %dec_label_pc_c7fc

dec_label_pc_c7fc:                                ; preds = %dec_label_pc_c7f0, %dec_label_pc_c7d9
  %20 = call i64 @__readfsqword(i64 40)
  %21 = icmp eq i64 %2, %20
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %21, label %dec_label_pc_c811, label %dec_label_pc_c80c

dec_label_pc_c80c:                                ; preds = %dec_label_pc_c7fc
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_c811

dec_label_pc_c811:                                ; preds = %dec_label_pc_c80c, %dec_label_pc_c7fc
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3a5bd:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3a5e0, label %dec_label_pc_3a5d4

dec_label_pc_3a5d4:                               ; preds = %dec_label_pc_3a5bd
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3a5e0

dec_label_pc_3a5e0:                               ; preds = %dec_label_pc_3a5d4, %dec_label_pc_3a5bd
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

