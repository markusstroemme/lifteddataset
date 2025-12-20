@global_var_a8f70 = external constant [10 x i8]
@global_var_a8fb8 = external constant [36 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32
@global_var_dc020 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_10792:
  %rax.0.reg2mem = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv9.reg2mem = alloca i64, align 8
  %rsi.1.ph.reg2mem = alloca i64, align 8
  %stack_var_-80.1.ph.reg2mem = alloca i32, align 4
  %rsi.0.ph.reg2mem = alloca i64, align 8
  %stack_var_-80.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_dc020, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_1095f, label %dec_label_pc_107c2

dec_label_pc_107c2:                               ; preds = %dec_label_pc_10792
  %3 = call i32 @socket(i32 2, i32 1, i32 6)
  %4 = icmp eq i32 %3, -1
  store i32 -1, ptr %stack_var_-80.1.ph.reg2mem, align 4
  store i64 1, ptr %rsi.1.ph.reg2mem, align 8
  br i1 %4, label %dec_label_pc_1089c, label %dec_label_pc_107ea

dec_label_pc_107ea:                               ; preds = %dec_label_pc_107c2
  %5 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %6 = call i32 @inet_addr(ptr @global_var_a8f70)
  %7 = call i16 @htons(i16 27015)
  %8 = ptrtoint ptr %stack_var_-56 to i64
  %9 = bitcast ptr %stack_var_-56 to ptr
  %10 = call i32 @connect(i32 %3, ptr nonnull %9, i32 16)
  %11 = icmp eq i32 %10, -1
  %12 = icmp eq i1 %11, false
  %13 = icmp eq i1 %12, false
  store i32 -1, ptr %stack_var_-80.0.ph.reg2mem, align 4
  store i64 %8, ptr %rsi.0.ph.reg2mem, align 8
  br i1 %13, label %dec_label_pc_10892, label %dec_label_pc_10846

dec_label_pc_10846:                               ; preds = %dec_label_pc_107ea
  %14 = ptrtoint ptr %stack_var_-30 to i64
  %15 = call i32 @recv(i32 %3, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %16 = add i32 %15, 1
  %17 = icmp ult i32 %16, 2
  store i32 -1, ptr %stack_var_-80.0.ph.reg2mem, align 4
  store i64 %14, ptr %rsi.0.ph.reg2mem, align 8
  br i1 %17, label %dec_label_pc_10892, label %dec_label_pc_1086d

dec_label_pc_1086d:                               ; preds = %dec_label_pc_10846
  %18 = ptrtoint ptr %stack_var_-8 to i64
  %19 = sext i32 %15 to i64
  %20 = add i64 %18, -22
  %21 = add i64 %20, %19
  %22 = inttoptr i64 %21 to ptr
  store i8 0, ptr %22, align 1
  %23 = bitcast ptr %stack_var_-30 to ptr
  %24 = call i32 @atoi(ptr nonnull %23)
  store i32 %24, ptr %stack_var_-80.0.ph.reg2mem, align 4
  store i64 %14, ptr %rsi.0.ph.reg2mem, align 8
  br label %dec_label_pc_10892

dec_label_pc_10892:                               ; preds = %dec_label_pc_107ea, %dec_label_pc_1086d, %dec_label_pc_10846
  %rsi.0.ph.reload = load i64, ptr %rsi.0.ph.reg2mem, align 8
  %stack_var_-80.0.ph.reload = load i32, ptr %stack_var_-80.0.ph.reg2mem, align 4
  %25 = call i32 @close(i32 %3)
  store i32 %stack_var_-80.0.ph.reload, ptr %stack_var_-80.1.ph.reg2mem, align 4
  store i64 %rsi.0.ph.reload, ptr %rsi.1.ph.reg2mem, align 8
  br label %dec_label_pc_1089c

dec_label_pc_1089c:                               ; preds = %dec_label_pc_107c2, %dec_label_pc_10892
  %.pr = load i32, ptr @global_var_dc020, align 4
  %26 = icmp eq i32 %.pr, 0
  br i1 %26, label %dec_label_pc_1095f, label %dec_label_pc_108aa

dec_label_pc_108aa:                               ; preds = %dec_label_pc_1089c
  %rsi.1.ph.reload = load i64, ptr %rsi.1.ph.reg2mem, align 8
  %stack_var_-80.1.ph.reload = load i32, ptr %stack_var_-80.1.ph.reg2mem, align 4
  %27 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv9.reg2mem, align 8
  br label %dec_label_pc_108c1

dec_label_pc_108c1:                               ; preds = %dec_label_pc_108c1, %dec_label_pc_108aa
  %indvars.iv9.reload = load i64, ptr %indvars.iv9.reg2mem, align 8
  %28 = mul i64 %indvars.iv9.reload, 4
  %29 = add i64 %28, %27
  %30 = inttoptr i64 %29 to ptr
  store i32 0, ptr %30, align 4
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9.reload, 1
  %exitcond11 = icmp eq i64 %indvars.iv.next10, 10
  store i64 %indvars.iv.next10, ptr %indvars.iv9.reg2mem, align 8
  br i1 %exitcond11, label %dec_label_pc_108e5, label %dec_label_pc_108c1

dec_label_pc_108e5:                               ; preds = %dec_label_pc_108c1
  %31 = icmp ugt i32 %stack_var_-80.1.ph.reload, 9
  br i1 %31, label %dec_label_pc_1093d, label %dec_label_pc_108f1

dec_label_pc_108f1:                               ; preds = %dec_label_pc_108e5
  %32 = sext i32 %stack_var_-80.1.ph.reload to i64
  %33 = mul i64 %32, 4
  %34 = add i64 %27, %33
  %35 = inttoptr i64 %34 to ptr
  store i32 1, ptr %35, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_10914

dec_label_pc_10914:                               ; preds = %dec_label_pc_10914, %dec_label_pc_108f1
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %36 = mul i64 %indvars.iv.reload, 4
  %37 = add i64 %36, %27
  %38 = inttoptr i64 %37 to ptr
  %39 = load i32, ptr %38, align 4
  call void @printIntLine(i32 %39)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_1094c, label %dec_label_pc_10914

dec_label_pc_1093d:                               ; preds = %dec_label_pc_108e5
  call void @printLine(ptr @global_var_a8fb8)
  br label %dec_label_pc_1094c

dec_label_pc_1094c:                               ; preds = %dec_label_pc_10914, %dec_label_pc_1093d
  %40 = icmp eq i64 %27, 0
  br i1 %40, label %dec_label_pc_1095f, label %dec_label_pc_10953

dec_label_pc_10953:                               ; preds = %dec_label_pc_1094c
  %41 = inttoptr i64 %27 to ptr
  %42 = and i64 %rsi.1.ph.reload, 4294967295
  %43 = inttoptr i64 %42 to ptr
  call void @_ZdaPv(ptr %41, ptr %43)
  br label %dec_label_pc_1095f

dec_label_pc_1095f:                               ; preds = %dec_label_pc_10792, %dec_label_pc_10953, %dec_label_pc_1094c, %dec_label_pc_1089c
  %44 = call i64 @__readfsqword(i64 40)
  %45 = icmp eq i64 %0, %44
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %45, label %dec_label_pc_10974, label %dec_label_pc_1096f

dec_label_pc_1096f:                               ; preds = %dec_label_pc_1095f
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_10974

dec_label_pc_10974:                               ; preds = %dec_label_pc_1096f, %dec_label_pc_1095f
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

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_91c1f:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_b1f38, i64 %0)
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i16 @htons(i16) local_unnamed_addr

declare i32 @socket(i32, i32, i32) local_unnamed_addr

declare i32 @recv(i32, ptr, i32, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare i32 @connect(i32, ptr, i32) local_unnamed_addr

declare i32 @inet_addr(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare i32 @close(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

