@0 = external global i32
@global_var_5c048 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_8316:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %rsi.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 100)
  %2 = load i32, ptr @global_var_5c048, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_836a, label %dec_label_pc_8349

dec_label_pc_8349:                                ; preds = %dec_label_pc_8316
  %4 = inttoptr i64 %1 to ptr
  %5 = call ptr @memset(ptr %4, i32 65, i32 49)
  %6 = add i64 %1, 49
  %7 = inttoptr i64 %6 to ptr
  store i8 0, ptr %7, align 1
  store i64 65, ptr %rsi.0.reg2mem, align 8
  br label %dec_label_pc_836a

dec_label_pc_836a:                                ; preds = %dec_label_pc_8349, %dec_label_pc_8316
  %8 = inttoptr i64 %1 to ptr
  %rsi.0.reload = load i64, ptr %rsi.0.reg2mem, align 8
  store i64 0, ptr %stack_var_-72, align 8
  %9 = call i32 @strlen(ptr %8)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %dec_label_pc_83e4, label %dec_label_pc_83ba.lr.ph

dec_label_pc_83ba.lr.ph:                          ; preds = %dec_label_pc_836a
  %11 = sext i32 %9 to i64
  %12 = ptrtoint ptr %stack_var_-72 to i64
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_83ba

dec_label_pc_83ba:                                ; preds = %dec_label_pc_83ba.lr.ph, %dec_label_pc_83ba
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %13 = add i64 %storemerge2.reload, %1
  %14 = inttoptr i64 %13 to ptr
  %15 = load i8, ptr %14, align 1
  %16 = add i64 %storemerge2.reload, %12
  %17 = inttoptr i64 %16 to ptr
  store i8 %15, ptr %17, align 1
  %18 = add nuw i64 %storemerge2.reload, 1
  %19 = icmp ult i64 %18, %11
  store i64 %18, ptr %storemerge2.reg2mem, align 8
  br i1 %19, label %dec_label_pc_83ba, label %dec_label_pc_83e4

dec_label_pc_83e4:                                ; preds = %dec_label_pc_83ba, %dec_label_pc_836a
  call void @printLine(ptr %8)
  %20 = icmp eq i64 %1, 0
  br i1 %20, label %dec_label_pc_8407, label %dec_label_pc_83fb

dec_label_pc_83fb:                                ; preds = %dec_label_pc_83e4
  %21 = inttoptr i64 %1 to ptr
  %22 = and i64 %rsi.0.reload, 4294967295
  %23 = inttoptr i64 %22 to ptr
  call void @_ZdaPv(ptr %21, ptr %23)
  br label %dec_label_pc_8407

dec_label_pc_8407:                                ; preds = %dec_label_pc_83fb, %dec_label_pc_83e4
  %24 = call i64 @__readfsqword(i64 40)
  %25 = icmp eq i64 %0, %24
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %25, label %dec_label_pc_841c, label %dec_label_pc_8417

dec_label_pc_8417:                                ; preds = %dec_label_pc_8407
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_841c

dec_label_pc_841c:                                ; preds = %dec_label_pc_8417, %dec_label_pc_8407
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

