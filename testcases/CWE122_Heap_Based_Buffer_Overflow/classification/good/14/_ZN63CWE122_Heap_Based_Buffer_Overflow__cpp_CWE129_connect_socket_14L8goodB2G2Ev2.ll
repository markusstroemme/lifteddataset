@global_var_a9330 = external constant [10 x i8]
@global_var_a9378 = external constant [36 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32
@global_var_dc084 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_14cdf:
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
  %1 = load i32, ptr @global_var_dc084, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store i32 -1, ptr %stack_var_-80.1.reg2mem, align 4
  br i1 %3, label %dec_label_pc_14dea, label %dec_label_pc_14d10

dec_label_pc_14d10:                               ; preds = %dec_label_pc_14cdf
  %4 = call i32 @socket(i32 2, i32 1, i32 6)
  %5 = icmp eq i32 %4, -1
  store i32 -1, ptr %stack_var_-80.1.reg2mem, align 4
  store i64 1, ptr %rsi.1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_14dea, label %dec_label_pc_14d38

dec_label_pc_14d38:                               ; preds = %dec_label_pc_14d10
  %6 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %7 = call i32 @inet_addr(ptr @global_var_a9330)
  %8 = call i16 @htons(i16 27015)
  %9 = ptrtoint ptr %stack_var_-56 to i64
  %10 = bitcast ptr %stack_var_-56 to ptr
  %11 = call i32 @connect(i32 %4, ptr nonnull %10, i32 16)
  %12 = icmp eq i32 %11, -1
  %13 = icmp eq i1 %12, false
  %14 = icmp eq i1 %13, false
  store i32 -1, ptr %stack_var_-80.0.ph.reg2mem, align 4
  store i64 %9, ptr %rsi.0.ph.reg2mem, align 8
  br i1 %14, label %dec_label_pc_14de0, label %dec_label_pc_14d94

dec_label_pc_14d94:                               ; preds = %dec_label_pc_14d38
  %15 = ptrtoint ptr %stack_var_-30 to i64
  %16 = call i32 @recv(i32 %4, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %17 = add i32 %16, 1
  %18 = icmp ult i32 %17, 2
  store i32 -1, ptr %stack_var_-80.0.ph.reg2mem, align 4
  store i64 %15, ptr %rsi.0.ph.reg2mem, align 8
  br i1 %18, label %dec_label_pc_14de0, label %dec_label_pc_14dbb

dec_label_pc_14dbb:                               ; preds = %dec_label_pc_14d94
  %19 = ptrtoint ptr %stack_var_-8 to i64
  %20 = sext i32 %16 to i64
  %21 = add i64 %19, -22
  %22 = add i64 %21, %20
  %23 = inttoptr i64 %22 to ptr
  store i8 0, ptr %23, align 1
  %24 = bitcast ptr %stack_var_-30 to ptr
  %25 = call i32 @atoi(ptr nonnull %24)
  store i32 %25, ptr %stack_var_-80.0.ph.reg2mem, align 4
  store i64 %15, ptr %rsi.0.ph.reg2mem, align 8
  br label %dec_label_pc_14de0

dec_label_pc_14de0:                               ; preds = %dec_label_pc_14d38, %dec_label_pc_14dbb, %dec_label_pc_14d94
  %rsi.0.ph.reload = load i64, ptr %rsi.0.ph.reg2mem, align 8
  %stack_var_-80.0.ph.reload = load i32, ptr %stack_var_-80.0.ph.reg2mem, align 4
  %26 = call i32 @close(i32 %4)
  store i32 %stack_var_-80.0.ph.reload, ptr %stack_var_-80.1.reg2mem, align 4
  store i64 %rsi.0.ph.reload, ptr %rsi.1.reg2mem, align 8
  br label %dec_label_pc_14dea

dec_label_pc_14dea:                               ; preds = %dec_label_pc_14d10, %dec_label_pc_14de0, %dec_label_pc_14cdf
  %27 = load i32, ptr @global_var_dc084, align 4
  %28 = icmp eq i32 %27, 5
  %29 = icmp eq i1 %28, false
  br i1 %29, label %dec_label_pc_14eae, label %dec_label_pc_14df9

dec_label_pc_14df9:                               ; preds = %dec_label_pc_14dea
  %rsi.1.reload = load i64, ptr %rsi.1.reg2mem, align 8
  %stack_var_-80.1.reload = load i32, ptr %stack_var_-80.1.reg2mem, align 4
  %30 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv9.reg2mem, align 8
  br label %dec_label_pc_14e10

dec_label_pc_14e10:                               ; preds = %dec_label_pc_14e10, %dec_label_pc_14df9
  %indvars.iv9.reload = load i64, ptr %indvars.iv9.reg2mem, align 8
  %31 = mul i64 %indvars.iv9.reload, 4
  %32 = add i64 %31, %30
  %33 = inttoptr i64 %32 to ptr
  store i32 0, ptr %33, align 4
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9.reload, 1
  %exitcond11 = icmp eq i64 %indvars.iv.next10, 10
  store i64 %indvars.iv.next10, ptr %indvars.iv9.reg2mem, align 8
  br i1 %exitcond11, label %dec_label_pc_14e34, label %dec_label_pc_14e10

dec_label_pc_14e34:                               ; preds = %dec_label_pc_14e10
  %34 = icmp ugt i32 %stack_var_-80.1.reload, 9
  br i1 %34, label %dec_label_pc_14e8c, label %dec_label_pc_14e40

dec_label_pc_14e40:                               ; preds = %dec_label_pc_14e34
  %35 = sext i32 %stack_var_-80.1.reload to i64
  %36 = mul i64 %35, 4
  %37 = add i64 %30, %36
  %38 = inttoptr i64 %37 to ptr
  store i32 1, ptr %38, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_14e63

dec_label_pc_14e63:                               ; preds = %dec_label_pc_14e63, %dec_label_pc_14e40
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %39 = mul i64 %indvars.iv.reload, 4
  %40 = add i64 %39, %30
  %41 = inttoptr i64 %40 to ptr
  %42 = load i32, ptr %41, align 4
  call void @printIntLine(i32 %42)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_14e9b, label %dec_label_pc_14e63

dec_label_pc_14e8c:                               ; preds = %dec_label_pc_14e34
  call void @printLine(ptr @global_var_a9378)
  br label %dec_label_pc_14e9b

dec_label_pc_14e9b:                               ; preds = %dec_label_pc_14e63, %dec_label_pc_14e8c
  %43 = icmp eq i64 %30, 0
  br i1 %43, label %dec_label_pc_14eae, label %dec_label_pc_14ea2

dec_label_pc_14ea2:                               ; preds = %dec_label_pc_14e9b
  %44 = inttoptr i64 %30 to ptr
  %45 = and i64 %rsi.1.reload, 4294967295
  %46 = inttoptr i64 %45 to ptr
  call void @_ZdaPv(ptr %44, ptr %46)
  br label %dec_label_pc_14eae

dec_label_pc_14eae:                               ; preds = %dec_label_pc_14ea2, %dec_label_pc_14e9b, %dec_label_pc_14dea
  %47 = call i64 @__readfsqword(i64 40)
  %48 = icmp eq i64 %0, %47
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %48, label %dec_label_pc_14ec3, label %dec_label_pc_14ebe

dec_label_pc_14ebe:                               ; preds = %dec_label_pc_14eae
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_14ec3

dec_label_pc_14ec3:                               ; preds = %dec_label_pc_14ebe, %dec_label_pc_14eae
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

