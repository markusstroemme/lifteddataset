@global_var_464bb = external constant [21 x i8]
@0 = external global i32
@global_var_5c05c = external local_unnamed_addr global i32

define i64 @anon0(ptr %arg1) local_unnamed_addr {
dec_label_pc_9b05:
  %.pre-phi.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @global_var_5c05c, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_9b30, label %dec_label_pc_9b1f

dec_label_pc_9b1f:                                ; preds = %dec_label_pc_9b05
  call void @printLine(ptr @global_var_464bb)
  %.pre = ptrtoint ptr %arg1 to i64
  store i64 %.pre, ptr %.pre-phi.reg2mem, align 8
  br label %dec_label_pc_9b51

dec_label_pc_9b30:                                ; preds = %dec_label_pc_9b05
  %2 = bitcast ptr %arg1 to ptr
  %3 = call ptr @memset(ptr %2, i32 65, i32 49)
  %4 = ptrtoint ptr %arg1 to i64
  %5 = add i64 %4, 49
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  store i64 %4, ptr %.pre-phi.reg2mem, align 8
  br label %dec_label_pc_9b51

dec_label_pc_9b51:                                ; preds = %dec_label_pc_9b30, %dec_label_pc_9b1f
  %.pre-phi.reload = load i64, ptr %.pre-phi.reg2mem, align 8
  ret i64 %.pre-phi.reload
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_9b57:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-72 = alloca i64, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = call i64 @_Znam(i64 100)
  store i32 0, ptr @global_var_5c05c, align 4
  %4 = inttoptr i64 %3 to ptr
  %5 = call i64 @anon0(ptr %4)
  %6 = inttoptr i64 %5 to ptr
  store i64 0, ptr %stack_var_-72, align 8
  %7 = call i32 @strlen(ptr %6)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %dec_label_pc_9c14, label %dec_label_pc_9bea.lr.ph

dec_label_pc_9bea.lr.ph:                          ; preds = %dec_label_pc_9b57
  %9 = sext i32 %7 to i64
  %10 = ptrtoint ptr %stack_var_-72 to i64
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_9bea

dec_label_pc_9bea:                                ; preds = %dec_label_pc_9bea.lr.ph, %dec_label_pc_9bea
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %11 = add i64 %storemerge2.reload, %5
  %12 = inttoptr i64 %11 to ptr
  %13 = load i8, ptr %12, align 1
  %14 = add i64 %storemerge2.reload, %10
  %15 = inttoptr i64 %14 to ptr
  store i8 %13, ptr %15, align 1
  %16 = add nuw i64 %storemerge2.reload, 1
  %17 = icmp ult i64 %16, %9
  store i64 %16, ptr %storemerge2.reg2mem, align 8
  br i1 %17, label %dec_label_pc_9bea, label %dec_label_pc_9c14

dec_label_pc_9c14:                                ; preds = %dec_label_pc_9bea, %dec_label_pc_9b57
  call void @printLine(ptr %6)
  %18 = icmp eq i64 %5, 0
  br i1 %18, label %dec_label_pc_9c37, label %dec_label_pc_9c2b

dec_label_pc_9c2b:                                ; preds = %dec_label_pc_9c14
  %19 = inttoptr i64 %5 to ptr
  %20 = and i64 %1, 4294967295
  %21 = inttoptr i64 %20 to ptr
  call void @_ZdaPv(ptr %19, ptr %21)
  br label %dec_label_pc_9c37

dec_label_pc_9c37:                                ; preds = %dec_label_pc_9c2b, %dec_label_pc_9c14
  %22 = call i64 @__readfsqword(i64 40)
  %23 = icmp eq i64 %2, %22
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %23, label %dec_label_pc_9c4c, label %dec_label_pc_9c47

dec_label_pc_9c47:                                ; preds = %dec_label_pc_9c37
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_9c4c

dec_label_pc_9c4c:                                ; preds = %dec_label_pc_9c47, %dec_label_pc_9c37
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

