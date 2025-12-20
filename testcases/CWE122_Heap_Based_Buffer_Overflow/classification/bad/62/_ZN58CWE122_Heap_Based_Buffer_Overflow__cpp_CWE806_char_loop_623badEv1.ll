@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_c313:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %.lcssa.reg2mem = alloca ptr, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %.reg2mem = alloca ptr, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-72 = alloca i64, align 8
  %stack_var_-96 = alloca ptr, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = call i64 @_Znam(i64 100)
  %4 = inttoptr i64 %3 to ptr
  store ptr %4, ptr %stack_var_-96, align 8
  %5 = call i64 @anon1(ptr nonnull %stack_var_-96)
  store i64 0, ptr %stack_var_-72, align 8
  %6 = load ptr, ptr %stack_var_-96, align 8
  %7 = call i32 @strlen(ptr %6)
  %8 = icmp eq i32 %7, 0
  %9 = load ptr, ptr %stack_var_-96, align 8
  store ptr %9, ptr %.lcssa.reg2mem, align 8
  br i1 %8, label %dec_label_pc_c3c2, label %dec_label_pc_c398.lr.ph

dec_label_pc_c398.lr.ph:                          ; preds = %dec_label_pc_c313
  %10 = sext i32 %7 to i64
  %11 = ptrtoint ptr %stack_var_-72 to i64
  store ptr %9, ptr %.reg2mem, align 8
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_c398

dec_label_pc_c398:                                ; preds = %dec_label_pc_c398.lr.ph, %dec_label_pc_c398
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %.reload = load ptr, ptr %.reg2mem, align 8
  %12 = ptrtoint ptr %.reload to i64
  %13 = add i64 %storemerge2.reload, %12
  %14 = inttoptr i64 %13 to ptr
  %15 = load i8, ptr %14, align 1
  %16 = add i64 %storemerge2.reload, %11
  %17 = inttoptr i64 %16 to ptr
  store i8 %15, ptr %17, align 1
  %18 = add nuw i64 %storemerge2.reload, 1
  %19 = icmp ult i64 %18, %10
  %20 = load ptr, ptr %stack_var_-96, align 8
  store ptr %20, ptr %.reg2mem, align 8
  store i64 %18, ptr %storemerge2.reg2mem, align 8
  store ptr %20, ptr %.lcssa.reg2mem, align 8
  br i1 %19, label %dec_label_pc_c398, label %dec_label_pc_c3c2

dec_label_pc_c3c2:                                ; preds = %dec_label_pc_c398, %dec_label_pc_c313
  %.lcssa.reload = load ptr, ptr %.lcssa.reg2mem, align 8
  call void @printLine(ptr %.lcssa.reload)
  %21 = load ptr, ptr %stack_var_-96, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %dec_label_pc_c3e7, label %dec_label_pc_c3db

dec_label_pc_c3db:                                ; preds = %dec_label_pc_c3c2
  %23 = bitcast ptr %21 to ptr
  %24 = and i64 %1, 4294967295
  %25 = inttoptr i64 %24 to ptr
  call void @_ZdaPv(ptr %23, ptr %25)
  br label %dec_label_pc_c3e7

dec_label_pc_c3e7:                                ; preds = %dec_label_pc_c3db, %dec_label_pc_c3c2
  %26 = call i64 @__readfsqword(i64 40)
  %27 = icmp eq i64 %2, %26
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %27, label %dec_label_pc_c3fc, label %dec_label_pc_c3f7

dec_label_pc_c3f7:                                ; preds = %dec_label_pc_c3e7
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_c3fc

dec_label_pc_c3fc:                                ; preds = %dec_label_pc_c3f7, %dec_label_pc_c3e7
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_c4f9:
  %0 = ptrtoint ptr %arg1 to i64
  %1 = bitcast ptr %arg1 to ptr
  %2 = call ptr @memset(ptr %1, i32 65, i32 99)
  %3 = add i64 %0, 99
  %4 = inttoptr i64 %3 to ptr
  store i8 0, ptr %4, align 1
  ret i64 %3
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

