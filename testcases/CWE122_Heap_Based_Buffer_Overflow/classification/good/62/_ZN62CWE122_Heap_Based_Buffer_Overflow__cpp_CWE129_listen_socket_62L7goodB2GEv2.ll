@global_var_aece0 = external constant [36 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_5b0f6:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv5.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-32 = alloca i32, align 4
  %2 = call i64 @__readfsqword(i64 40)
  store i32 -1, ptr %stack_var_-32, align 4
  %3 = call i64 @anon1(ptr nonnull %stack_var_-32)
  %4 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv5.reg2mem, align 8
  br label %dec_label_pc_5b13b

dec_label_pc_5b13b:                               ; preds = %dec_label_pc_5b13b, %dec_label_pc_5b0f6
  %indvars.iv5.reload = load i64, ptr %indvars.iv5.reg2mem, align 8
  %5 = mul i64 %indvars.iv5.reload, 4
  %6 = add i64 %5, %4
  %7 = inttoptr i64 %6 to ptr
  store i32 0, ptr %7, align 4
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5.reload, 1
  %exitcond7 = icmp eq i64 %indvars.iv.next6, 10
  store i64 %indvars.iv.next6, ptr %indvars.iv5.reg2mem, align 8
  br i1 %exitcond7, label %dec_label_pc_5b15f, label %dec_label_pc_5b13b

dec_label_pc_5b15f:                               ; preds = %dec_label_pc_5b13b
  %8 = load i32, ptr %stack_var_-32, align 4
  %9 = icmp ugt i32 %8, 9
  br i1 %9, label %dec_label_pc_5b1ba, label %dec_label_pc_5b16e

dec_label_pc_5b16e:                               ; preds = %dec_label_pc_5b15f
  %10 = sext i32 %8 to i64
  %11 = mul i64 %10, 4
  %12 = add i64 %11, %4
  %13 = inttoptr i64 %12 to ptr
  store i32 1, ptr %13, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_5b191

dec_label_pc_5b191:                               ; preds = %dec_label_pc_5b191, %dec_label_pc_5b16e
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %14 = mul i64 %indvars.iv.reload, 4
  %15 = add i64 %14, %4
  %16 = inttoptr i64 %15 to ptr
  %17 = load i32, ptr %16, align 4
  call void @printIntLine(i32 %17)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_5b1c9, label %dec_label_pc_5b191

dec_label_pc_5b1ba:                               ; preds = %dec_label_pc_5b15f
  call void @printLine(ptr @global_var_aece0)
  br label %dec_label_pc_5b1c9

dec_label_pc_5b1c9:                               ; preds = %dec_label_pc_5b191, %dec_label_pc_5b1ba
  %18 = icmp eq i64 %4, 0
  br i1 %18, label %dec_label_pc_5b1dc, label %dec_label_pc_5b1d0

dec_label_pc_5b1d0:                               ; preds = %dec_label_pc_5b1c9
  %19 = inttoptr i64 %4 to ptr
  %20 = and i64 %1, 4294967295
  %21 = inttoptr i64 %20 to ptr
  call void @_ZdaPv(ptr %19, ptr %21)
  br label %dec_label_pc_5b1dc

dec_label_pc_5b1dc:                               ; preds = %dec_label_pc_5b1d0, %dec_label_pc_5b1c9
  %22 = call i64 @__readfsqword(i64 40)
  %23 = icmp eq i64 %2, %22
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %23, label %dec_label_pc_5b1f1, label %dec_label_pc_5b1ec

dec_label_pc_5b1ec:                               ; preds = %dec_label_pc_5b1dc
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_5b1f1

dec_label_pc_5b1f1:                               ; preds = %dec_label_pc_5b1ec, %dec_label_pc_5b1dc
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_5b37c:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %2 = icmp eq i32 %1, -1
  br i1 %2, label %dec_label_pc_5b4c0, label %dec_label_pc_5b3ca

dec_label_pc_5b3ca:                               ; preds = %dec_label_pc_5b37c
  %3 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %4 = call i16 @htons(i16 27015)
  %5 = bitcast ptr %stack_var_-56 to ptr
  %6 = call i32 @bind(i32 %1, ptr nonnull %5, i32 16)
  %7 = icmp eq i32 %6, -1
  %8 = icmp eq i1 %7, false
  %9 = icmp eq i1 %8, false
  br i1 %9, label %dec_label_pc_5b4b0.thread5, label %dec_label_pc_5b41b

dec_label_pc_5b41b:                               ; preds = %dec_label_pc_5b3ca
  %10 = call i32 @listen(i32 %1, i32 5)
  %11 = icmp eq i32 %10, -1
  %12 = icmp eq i1 %11, false
  %13 = icmp eq i1 %12, false
  br i1 %13, label %dec_label_pc_5b4b0.thread5, label %dec_label_pc_5b434

dec_label_pc_5b434:                               ; preds = %dec_label_pc_5b41b
  %14 = call i32 @accept(i32 %1, ptr null, ptr null)
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %dec_label_pc_5b4b0.thread5, label %dec_label_pc_5b451

dec_label_pc_5b451:                               ; preds = %dec_label_pc_5b434
  %16 = call i32 @recv(i32 %14, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %17 = add i32 %16, 1
  %18 = icmp ult i32 %17, 2
  br i1 %18, label %dec_label_pc_5b4b6, label %dec_label_pc_5b478

dec_label_pc_5b478:                               ; preds = %dec_label_pc_5b451
  %19 = ptrtoint ptr %stack_var_-8 to i64
  %20 = sext i32 %16 to i64
  %21 = add i64 %19, -22
  %22 = add i64 %21, %20
  %23 = inttoptr i64 %22 to ptr
  store i8 0, ptr %23, align 1
  %24 = bitcast ptr %stack_var_-30 to ptr
  %25 = call i32 @atoi(ptr nonnull %24)
  store i32 %25, ptr %arg1, align 4
  br label %dec_label_pc_5b4b6

dec_label_pc_5b4b0.thread5:                       ; preds = %dec_label_pc_5b434, %dec_label_pc_5b41b, %dec_label_pc_5b3ca
  %26 = call i32 @close(i32 %1)
  br label %dec_label_pc_5b4c0

dec_label_pc_5b4b6:                               ; preds = %dec_label_pc_5b478, %dec_label_pc_5b451
  %27 = call i32 @close(i32 %1)
  %28 = call i32 @close(i32 %14)
  br label %dec_label_pc_5b4c0

dec_label_pc_5b4c0:                               ; preds = %dec_label_pc_5b37c, %dec_label_pc_5b4b0.thread5, %dec_label_pc_5b4b6
  %29 = call i64 @__readfsqword(i64 40)
  %30 = icmp eq i64 %0, %29
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %30, label %dec_label_pc_5b4d5, label %dec_label_pc_5b4d0

dec_label_pc_5b4d0:                               ; preds = %dec_label_pc_5b4c0
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_5b4d5

dec_label_pc_5b4d5:                               ; preds = %dec_label_pc_5b4d0, %dec_label_pc_5b4c0
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

declare i32 @bind(i32, ptr, i32) local_unnamed_addr

declare i32 @socket(i32, i32, i32) local_unnamed_addr

declare i32 @accept(i32, ptr, ptr) local_unnamed_addr

declare i32 @recv(i32, ptr, i32, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @listen(i32, i32) local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare i32 @close(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

