@global_var_a8f70 = external constant [10 x i8]
@global_var_a8fa0 = external constant [21 x i8]
@global_var_a8fb8 = external constant [36 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32
@global_var_dc020 = external local_unnamed_addr global i32
@global_var_dc0a4 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_1059e:
  %rax.0.reg2mem = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv9.reg2mem = alloca i64, align 8
  %rsi.1.reg2mem = alloca i64, align 8
  %stack_var_-80.1.reg2mem = alloca i32, align 4
  %rsi.0.ph.reg2mem = alloca i64, align 8
  %stack_var_-80.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_dc020, align 4
  %2 = icmp eq i32 %1, 0
  store i32 -1, ptr %stack_var_-80.1.reg2mem, align 4
  br i1 %2, label %dec_label_pc_106a8, label %dec_label_pc_105ce

dec_label_pc_105ce:                               ; preds = %dec_label_pc_1059e
  %3 = call i32 @socket(i32 2, i32 1, i32 6)
  %4 = icmp eq i32 %3, -1
  store i32 -1, ptr %stack_var_-80.1.reg2mem, align 4
  store i64 1, ptr %rsi.1.reg2mem, align 8
  br i1 %4, label %dec_label_pc_106a8, label %dec_label_pc_105f6

dec_label_pc_105f6:                               ; preds = %dec_label_pc_105ce
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
  br i1 %13, label %dec_label_pc_1069e, label %dec_label_pc_10652

dec_label_pc_10652:                               ; preds = %dec_label_pc_105f6
  %14 = ptrtoint ptr %stack_var_-30 to i64
  %15 = call i32 @recv(i32 %3, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %16 = add i32 %15, 1
  %17 = icmp ult i32 %16, 2
  store i32 -1, ptr %stack_var_-80.0.ph.reg2mem, align 4
  store i64 %14, ptr %rsi.0.ph.reg2mem, align 8
  br i1 %17, label %dec_label_pc_1069e, label %dec_label_pc_10679

dec_label_pc_10679:                               ; preds = %dec_label_pc_10652
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
  br label %dec_label_pc_1069e

dec_label_pc_1069e:                               ; preds = %dec_label_pc_105f6, %dec_label_pc_10679, %dec_label_pc_10652
  %rsi.0.ph.reload = load i64, ptr %rsi.0.ph.reg2mem, align 8
  %stack_var_-80.0.ph.reload = load i32, ptr %stack_var_-80.0.ph.reg2mem, align 4
  %25 = call i32 @close(i32 %3)
  store i32 %stack_var_-80.0.ph.reload, ptr %stack_var_-80.1.reg2mem, align 4
  store i64 %rsi.0.ph.reload, ptr %rsi.1.reg2mem, align 8
  br label %dec_label_pc_106a8

dec_label_pc_106a8:                               ; preds = %dec_label_pc_105ce, %dec_label_pc_1069e, %dec_label_pc_1059e
  %26 = load i32, ptr @global_var_dc0a4, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %dec_label_pc_106c6, label %dec_label_pc_106b2

dec_label_pc_106b2:                               ; preds = %dec_label_pc_106a8
  call void @printLine(ptr @global_var_a8fa0)
  br label %dec_label_pc_1077b

dec_label_pc_106c6:                               ; preds = %dec_label_pc_106a8
  %rsi.1.reload = load i64, ptr %rsi.1.reg2mem, align 8
  %stack_var_-80.1.reload = load i32, ptr %stack_var_-80.1.reg2mem, align 4
  %28 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv9.reg2mem, align 8
  br label %dec_label_pc_106dd

dec_label_pc_106dd:                               ; preds = %dec_label_pc_106dd, %dec_label_pc_106c6
  %indvars.iv9.reload = load i64, ptr %indvars.iv9.reg2mem, align 8
  %29 = mul i64 %indvars.iv9.reload, 4
  %30 = add i64 %29, %28
  %31 = inttoptr i64 %30 to ptr
  store i32 0, ptr %31, align 4
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9.reload, 1
  %exitcond11 = icmp eq i64 %indvars.iv.next10, 10
  store i64 %indvars.iv.next10, ptr %indvars.iv9.reg2mem, align 8
  br i1 %exitcond11, label %dec_label_pc_10701, label %dec_label_pc_106dd

dec_label_pc_10701:                               ; preds = %dec_label_pc_106dd
  %32 = icmp ugt i32 %stack_var_-80.1.reload, 9
  br i1 %32, label %dec_label_pc_10759, label %dec_label_pc_1070d

dec_label_pc_1070d:                               ; preds = %dec_label_pc_10701
  %33 = sext i32 %stack_var_-80.1.reload to i64
  %34 = mul i64 %33, 4
  %35 = add i64 %28, %34
  %36 = inttoptr i64 %35 to ptr
  store i32 1, ptr %36, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_10730

dec_label_pc_10730:                               ; preds = %dec_label_pc_10730, %dec_label_pc_1070d
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %37 = mul i64 %indvars.iv.reload, 4
  %38 = add i64 %37, %28
  %39 = inttoptr i64 %38 to ptr
  %40 = load i32, ptr %39, align 4
  call void @printIntLine(i32 %40)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_10768, label %dec_label_pc_10730

dec_label_pc_10759:                               ; preds = %dec_label_pc_10701
  call void @printLine(ptr @global_var_a8fb8)
  br label %dec_label_pc_10768

dec_label_pc_10768:                               ; preds = %dec_label_pc_10730, %dec_label_pc_10759
  %41 = icmp eq i64 %28, 0
  br i1 %41, label %dec_label_pc_1077b, label %dec_label_pc_1076f

dec_label_pc_1076f:                               ; preds = %dec_label_pc_10768
  %42 = inttoptr i64 %28 to ptr
  %43 = and i64 %rsi.1.reload, 4294967295
  %44 = inttoptr i64 %43 to ptr
  call void @_ZdaPv(ptr %42, ptr %44)
  br label %dec_label_pc_1077b

dec_label_pc_1077b:                               ; preds = %dec_label_pc_1076f, %dec_label_pc_10768, %dec_label_pc_106b2
  %45 = call i64 @__readfsqword(i64 40)
  %46 = icmp eq i64 %0, %45
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %46, label %dec_label_pc_10790, label %dec_label_pc_1078b

dec_label_pc_1078b:                               ; preds = %dec_label_pc_1077b
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_10790

dec_label_pc_10790:                               ; preds = %dec_label_pc_1078b, %dec_label_pc_1077b
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

