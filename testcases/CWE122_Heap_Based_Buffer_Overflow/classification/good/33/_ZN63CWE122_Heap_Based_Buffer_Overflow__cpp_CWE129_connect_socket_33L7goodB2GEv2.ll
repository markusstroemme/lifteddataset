@global_var_a9680 = external constant [10 x i8]
@global_var_a96b0 = external constant [36 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_18058:
  %rax.0.reg2mem = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv10.reg2mem = alloca i64, align 8
  %rsi.07.reg2mem = alloca i64, align 8
  %.reg2mem13 = alloca i32, align 4
  %rsi.0.ph.reg2mem = alloca i64, align 8
  %.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %2 = icmp eq i32 %1, -1
  store i32 -1, ptr %.reg2mem13, align 4
  store i64 1, ptr %rsi.07.reg2mem, align 8
  br i1 %2, label %dec_label_pc_1815c, label %dec_label_pc_180aa

dec_label_pc_180aa:                               ; preds = %dec_label_pc_18058
  %3 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %4 = call i32 @inet_addr(ptr @global_var_a9680)
  %5 = call i16 @htons(i16 27015)
  %6 = ptrtoint ptr %stack_var_-56 to i64
  %7 = bitcast ptr %stack_var_-56 to ptr
  %8 = call i32 @connect(i32 %1, ptr nonnull %7, i32 16)
  %9 = icmp eq i32 %8, -1
  %10 = icmp eq i1 %9, false
  %11 = icmp eq i1 %10, false
  store i32 -1, ptr %.reg2mem, align 4
  store i64 %6, ptr %rsi.0.ph.reg2mem, align 8
  br i1 %11, label %dec_label_pc_18152, label %dec_label_pc_18106

dec_label_pc_18106:                               ; preds = %dec_label_pc_180aa
  %12 = ptrtoint ptr %stack_var_-30 to i64
  %13 = call i32 @recv(i32 %1, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %14 = add i32 %13, 1
  %15 = icmp ult i32 %14, 2
  store i32 -1, ptr %.reg2mem, align 4
  store i64 %12, ptr %rsi.0.ph.reg2mem, align 8
  br i1 %15, label %dec_label_pc_18152, label %dec_label_pc_1812d

dec_label_pc_1812d:                               ; preds = %dec_label_pc_18106
  %16 = ptrtoint ptr %stack_var_-8 to i64
  %17 = sext i32 %13 to i64
  %18 = add i64 %16, -22
  %19 = add i64 %18, %17
  %20 = inttoptr i64 %19 to ptr
  store i8 0, ptr %20, align 1
  %21 = bitcast ptr %stack_var_-30 to ptr
  %22 = call i32 @atoi(ptr nonnull %21)
  store i32 %22, ptr %.reg2mem, align 4
  store i64 %12, ptr %rsi.0.ph.reg2mem, align 8
  br label %dec_label_pc_18152

dec_label_pc_18152:                               ; preds = %dec_label_pc_180aa, %dec_label_pc_1812d, %dec_label_pc_18106
  %rsi.0.ph.reload = load i64, ptr %rsi.0.ph.reg2mem, align 8
  %.reload = load i32, ptr %.reg2mem, align 4
  %23 = call i32 @close(i32 %1)
  store i32 %.reload, ptr %.reg2mem13, align 4
  store i64 %rsi.0.ph.reload, ptr %rsi.07.reg2mem, align 8
  br label %dec_label_pc_1815c

dec_label_pc_1815c:                               ; preds = %dec_label_pc_18058, %dec_label_pc_18152
  %rsi.07.reload = load i64, ptr %rsi.07.reg2mem, align 8
  %.reload14 = load i32, ptr %.reg2mem13, align 4
  %24 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv10.reg2mem, align 8
  br label %dec_label_pc_1817c

dec_label_pc_1817c:                               ; preds = %dec_label_pc_1817c, %dec_label_pc_1815c
  %indvars.iv10.reload = load i64, ptr %indvars.iv10.reg2mem, align 8
  %25 = mul i64 %indvars.iv10.reload, 4
  %26 = add i64 %25, %24
  %27 = inttoptr i64 %26 to ptr
  store i32 0, ptr %27, align 4
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10.reload, 1
  %exitcond12 = icmp eq i64 %indvars.iv.next11, 10
  store i64 %indvars.iv.next11, ptr %indvars.iv10.reg2mem, align 8
  br i1 %exitcond12, label %dec_label_pc_181a0, label %dec_label_pc_1817c

dec_label_pc_181a0:                               ; preds = %dec_label_pc_1817c
  %28 = icmp ugt i32 %.reload14, 9
  br i1 %28, label %dec_label_pc_181f8, label %dec_label_pc_181ac

dec_label_pc_181ac:                               ; preds = %dec_label_pc_181a0
  %29 = sext i32 %.reload14 to i64
  %30 = mul i64 %29, 4
  %31 = add i64 %30, %24
  %32 = inttoptr i64 %31 to ptr
  store i32 1, ptr %32, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_181cf

dec_label_pc_181cf:                               ; preds = %dec_label_pc_181cf, %dec_label_pc_181ac
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %33 = mul i64 %indvars.iv.reload, 4
  %34 = add i64 %33, %24
  %35 = inttoptr i64 %34 to ptr
  %36 = load i32, ptr %35, align 4
  call void @printIntLine(i32 %36)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_18207, label %dec_label_pc_181cf

dec_label_pc_181f8:                               ; preds = %dec_label_pc_181a0
  call void @printLine(ptr @global_var_a96b0)
  br label %dec_label_pc_18207

dec_label_pc_18207:                               ; preds = %dec_label_pc_181cf, %dec_label_pc_181f8
  %37 = icmp eq i64 %24, 0
  br i1 %37, label %dec_label_pc_1821a, label %dec_label_pc_1820e

dec_label_pc_1820e:                               ; preds = %dec_label_pc_18207
  %38 = inttoptr i64 %24 to ptr
  %39 = and i64 %rsi.07.reload, 4294967295
  %40 = inttoptr i64 %39 to ptr
  call void @_ZdaPv(ptr %38, ptr %40)
  br label %dec_label_pc_1821a

dec_label_pc_1821a:                               ; preds = %dec_label_pc_1820e, %dec_label_pc_18207
  %41 = call i64 @__readfsqword(i64 40)
  %42 = icmp eq i64 %0, %41
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %42, label %dec_label_pc_1822f, label %dec_label_pc_1822a

dec_label_pc_1822a:                               ; preds = %dec_label_pc_1821a
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_1822f

dec_label_pc_1822f:                               ; preds = %dec_label_pc_1822a, %dec_label_pc_1821a
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

