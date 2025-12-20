@global_var_a9038 = external constant [10 x i8]
@global_var_a9068 = external constant [21 x i8]
@global_var_a9080 = external constant [36 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32
@global_var_dc024 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_11457:
  %rax.0.reg2mem = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv9.reg2mem = alloca i64, align 8
  %rsi.1.reg2mem = alloca i64, align 8
  %stack_var_-80.1.reg2mem = alloca i32, align 4
  %.reg2mem = alloca i32, align 4
  %rsi.1.ph.reg2mem = alloca i64, align 8
  %stack_var_-80.1.ph.reg2mem = alloca i32, align 4
  %rsi.0.ph.reg2mem = alloca i64, align 8
  %stack_var_-80.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_dc024, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store i32 %1, ptr %.reg2mem, align 4
  store i32 -1, ptr %stack_var_-80.1.reg2mem, align 4
  br i1 %3, label %dec_label_pc_11562, label %dec_label_pc_11488

dec_label_pc_11488:                               ; preds = %dec_label_pc_11457
  %4 = call i32 @socket(i32 2, i32 1, i32 6)
  %5 = icmp eq i32 %4, -1
  store i32 -1, ptr %stack_var_-80.1.ph.reg2mem, align 4
  store i64 1, ptr %rsi.1.ph.reg2mem, align 8
  br i1 %5, label %dec_label_pc_11562thread-pre-split, label %dec_label_pc_114b0

dec_label_pc_114b0:                               ; preds = %dec_label_pc_11488
  %6 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %7 = call i32 @inet_addr(ptr @global_var_a9038)
  %8 = call i16 @htons(i16 27015)
  %9 = ptrtoint ptr %stack_var_-56 to i64
  %10 = bitcast ptr %stack_var_-56 to ptr
  %11 = call i32 @connect(i32 %4, ptr nonnull %10, i32 16)
  %12 = icmp eq i32 %11, -1
  %13 = icmp eq i1 %12, false
  %14 = icmp eq i1 %13, false
  store i32 -1, ptr %stack_var_-80.0.ph.reg2mem, align 4
  store i64 %9, ptr %rsi.0.ph.reg2mem, align 8
  br i1 %14, label %dec_label_pc_11558, label %dec_label_pc_1150c

dec_label_pc_1150c:                               ; preds = %dec_label_pc_114b0
  %15 = ptrtoint ptr %stack_var_-30 to i64
  %16 = call i32 @recv(i32 %4, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %17 = add i32 %16, 1
  %18 = icmp ult i32 %17, 2
  store i32 -1, ptr %stack_var_-80.0.ph.reg2mem, align 4
  store i64 %15, ptr %rsi.0.ph.reg2mem, align 8
  br i1 %18, label %dec_label_pc_11558, label %dec_label_pc_11533

dec_label_pc_11533:                               ; preds = %dec_label_pc_1150c
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
  br label %dec_label_pc_11558

dec_label_pc_11558:                               ; preds = %dec_label_pc_114b0, %dec_label_pc_11533, %dec_label_pc_1150c
  %rsi.0.ph.reload = load i64, ptr %rsi.0.ph.reg2mem, align 8
  %stack_var_-80.0.ph.reload = load i32, ptr %stack_var_-80.0.ph.reg2mem, align 4
  %26 = call i32 @close(i32 %4)
  store i32 %stack_var_-80.0.ph.reload, ptr %stack_var_-80.1.ph.reg2mem, align 4
  store i64 %rsi.0.ph.reload, ptr %rsi.1.ph.reg2mem, align 8
  br label %dec_label_pc_11562thread-pre-split

dec_label_pc_11562thread-pre-split:               ; preds = %dec_label_pc_11558, %dec_label_pc_11488
  %rsi.1.ph.reload = load i64, ptr %rsi.1.ph.reg2mem, align 8
  %stack_var_-80.1.ph.reload = load i32, ptr %stack_var_-80.1.ph.reg2mem, align 4
  %.pr = load i32, ptr @global_var_dc024, align 4
  store i32 %.pr, ptr %.reg2mem, align 4
  store i32 %stack_var_-80.1.ph.reload, ptr %stack_var_-80.1.reg2mem, align 4
  store i64 %rsi.1.ph.reload, ptr %rsi.1.reg2mem, align 8
  br label %dec_label_pc_11562

dec_label_pc_11562:                               ; preds = %dec_label_pc_11562thread-pre-split, %dec_label_pc_11457
  %.reload = load i32, ptr %.reg2mem, align 4
  %27 = icmp eq i32 %.reload, 5
  br i1 %27, label %dec_label_pc_11581, label %dec_label_pc_1156d

dec_label_pc_1156d:                               ; preds = %dec_label_pc_11562
  call void @printLine(ptr @global_var_a9068)
  br label %dec_label_pc_11636

dec_label_pc_11581:                               ; preds = %dec_label_pc_11562
  %rsi.1.reload = load i64, ptr %rsi.1.reg2mem, align 8
  %stack_var_-80.1.reload = load i32, ptr %stack_var_-80.1.reg2mem, align 4
  %28 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv9.reg2mem, align 8
  br label %dec_label_pc_11598

dec_label_pc_11598:                               ; preds = %dec_label_pc_11598, %dec_label_pc_11581
  %indvars.iv9.reload = load i64, ptr %indvars.iv9.reg2mem, align 8
  %29 = mul i64 %indvars.iv9.reload, 4
  %30 = add i64 %29, %28
  %31 = inttoptr i64 %30 to ptr
  store i32 0, ptr %31, align 4
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9.reload, 1
  %exitcond11 = icmp eq i64 %indvars.iv.next10, 10
  store i64 %indvars.iv.next10, ptr %indvars.iv9.reg2mem, align 8
  br i1 %exitcond11, label %dec_label_pc_115bc, label %dec_label_pc_11598

dec_label_pc_115bc:                               ; preds = %dec_label_pc_11598
  %32 = icmp ugt i32 %stack_var_-80.1.reload, 9
  br i1 %32, label %dec_label_pc_11614, label %dec_label_pc_115c8

dec_label_pc_115c8:                               ; preds = %dec_label_pc_115bc
  %33 = sext i32 %stack_var_-80.1.reload to i64
  %34 = mul i64 %33, 4
  %35 = add i64 %28, %34
  %36 = inttoptr i64 %35 to ptr
  store i32 1, ptr %36, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_115eb

dec_label_pc_115eb:                               ; preds = %dec_label_pc_115eb, %dec_label_pc_115c8
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %37 = mul i64 %indvars.iv.reload, 4
  %38 = add i64 %37, %28
  %39 = inttoptr i64 %38 to ptr
  %40 = load i32, ptr %39, align 4
  call void @printIntLine(i32 %40)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_11623, label %dec_label_pc_115eb

dec_label_pc_11614:                               ; preds = %dec_label_pc_115bc
  call void @printLine(ptr @global_var_a9080)
  br label %dec_label_pc_11623

dec_label_pc_11623:                               ; preds = %dec_label_pc_115eb, %dec_label_pc_11614
  %41 = icmp eq i64 %28, 0
  br i1 %41, label %dec_label_pc_11636, label %dec_label_pc_1162a

dec_label_pc_1162a:                               ; preds = %dec_label_pc_11623
  %42 = inttoptr i64 %28 to ptr
  %43 = and i64 %rsi.1.reload, 4294967295
  %44 = inttoptr i64 %43 to ptr
  call void @_ZdaPv(ptr %42, ptr %44)
  br label %dec_label_pc_11636

dec_label_pc_11636:                               ; preds = %dec_label_pc_1162a, %dec_label_pc_11623, %dec_label_pc_1156d
  %45 = call i64 @__readfsqword(i64 40)
  %46 = icmp eq i64 %0, %45
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %46, label %dec_label_pc_1164b, label %dec_label_pc_11646

dec_label_pc_11646:                               ; preds = %dec_label_pc_11636
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_1164b

dec_label_pc_1164b:                               ; preds = %dec_label_pc_11646, %dec_label_pc_11636
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

