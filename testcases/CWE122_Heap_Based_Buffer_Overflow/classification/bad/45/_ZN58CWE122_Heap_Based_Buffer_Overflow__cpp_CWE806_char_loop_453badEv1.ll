@0 = external global i32
@global_var_5c070 = external local_unnamed_addr global ptr

define i64 @anon0() local_unnamed_addr {
dec_label_pc_b3bf:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-72 = alloca i64, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = load ptr, ptr @global_var_5c070, align 8
  store i64 0, ptr %stack_var_-72, align 8
  %4 = call i32 @strlen(ptr %3)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %dec_label_pc_b45f, label %dec_label_pc_b435.lr.ph

dec_label_pc_b435.lr.ph:                          ; preds = %dec_label_pc_b3bf
  %6 = sext i32 %4 to i64
  %7 = ptrtoint ptr %3 to i64
  %8 = ptrtoint ptr %stack_var_-72 to i64
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_b435

dec_label_pc_b435:                                ; preds = %dec_label_pc_b435.lr.ph, %dec_label_pc_b435
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
  br i1 %15, label %dec_label_pc_b435, label %dec_label_pc_b45f

dec_label_pc_b45f:                                ; preds = %dec_label_pc_b435, %dec_label_pc_b3bf
  call void @printLine(ptr %3)
  %16 = icmp eq ptr %3, null
  br i1 %16, label %dec_label_pc_b482, label %dec_label_pc_b476

dec_label_pc_b476:                                ; preds = %dec_label_pc_b45f
  %17 = bitcast ptr %3 to ptr
  %18 = and i64 %1, 4294967295
  %19 = inttoptr i64 %18 to ptr
  call void @_ZdaPv(ptr %17, ptr %19)
  br label %dec_label_pc_b482

dec_label_pc_b482:                                ; preds = %dec_label_pc_b476, %dec_label_pc_b45f
  %20 = call i64 @__readfsqword(i64 40)
  %21 = icmp eq i64 %2, %20
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %21, label %dec_label_pc_b497, label %dec_label_pc_b492

dec_label_pc_b492:                                ; preds = %dec_label_pc_b482
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_b497

dec_label_pc_b497:                                ; preds = %dec_label_pc_b492, %dec_label_pc_b482
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_b499:
  %0 = call i64 @_Znam(i64 100)
  %1 = inttoptr i64 %0 to ptr
  %2 = call ptr @memset(ptr %1, i32 65, i32 99)
  %3 = add i64 %0, 99
  %4 = inttoptr i64 %3 to ptr
  store i8 0, ptr %4, align 1
  %5 = inttoptr i64 %0 to ptr
  store ptr %5, ptr @global_var_5c070, align 8
  %6 = call i64 @anon0()
  ret i64 %6
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

