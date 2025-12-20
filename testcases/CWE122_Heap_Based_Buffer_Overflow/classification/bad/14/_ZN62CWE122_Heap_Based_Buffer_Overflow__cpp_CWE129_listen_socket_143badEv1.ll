@global_var_ae690 = external constant [32 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32
@global_var_dc084 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_5320e:
  %rax.0.reg2mem = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv12.reg2mem = alloca i64, align 8
  %rsi.1.reg2mem = alloca i64, align 8
  %stack_var_-84.1.reg2mem = alloca i32, align 4
  %stack_var_-84.0.ph.reg2mem = alloca i32, align 4
  %rsi.0.ph.ph.reg2mem = alloca i64, align 8
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_dc084, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store i32 -1, ptr %stack_var_-84.1.reg2mem, align 4
  br i1 %3, label %dec_label_pc_53361, label %dec_label_pc_5323f

dec_label_pc_5323f:                               ; preds = %dec_label_pc_5320e
  %4 = call i32 @socket(i32 2, i32 1, i32 6)
  %5 = icmp eq i32 %4, -1
  store i32 -1, ptr %stack_var_-84.1.reg2mem, align 4
  store i64 1, ptr %rsi.1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_53361, label %dec_label_pc_5326e

dec_label_pc_5326e:                               ; preds = %dec_label_pc_5323f
  %6 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %7 = call i16 @htons(i16 27015)
  %8 = ptrtoint ptr %stack_var_-56 to i64
  %9 = bitcast ptr %stack_var_-56 to ptr
  %10 = call i32 @bind(i32 %4, ptr nonnull %9, i32 16)
  %11 = icmp eq i32 %10, -1
  %12 = icmp eq i1 %11, false
  %13 = icmp eq i1 %12, false
  store i64 %8, ptr %rsi.0.ph.ph.reg2mem, align 8
  br i1 %13, label %dec_label_pc_53351.thread9, label %dec_label_pc_532bf

dec_label_pc_532bf:                               ; preds = %dec_label_pc_5326e
  %14 = call i32 @listen(i32 %4, i32 5)
  %15 = icmp eq i32 %14, -1
  %16 = icmp eq i1 %15, false
  %17 = icmp eq i1 %16, false
  store i64 5, ptr %rsi.0.ph.ph.reg2mem, align 8
  br i1 %17, label %dec_label_pc_53351.thread9, label %dec_label_pc_532d8

dec_label_pc_532d8:                               ; preds = %dec_label_pc_532bf
  %18 = call i32 @accept(i32 %4, ptr null, ptr null)
  %19 = icmp eq i32 %18, -1
  store i64 0, ptr %rsi.0.ph.ph.reg2mem, align 8
  br i1 %19, label %dec_label_pc_53351.thread9, label %dec_label_pc_532f5

dec_label_pc_532f5:                               ; preds = %dec_label_pc_532d8
  %20 = call i32 @recv(i32 %18, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %21 = add i32 %20, 1
  %22 = icmp ult i32 %21, 2
  store i32 -1, ptr %stack_var_-84.0.ph.reg2mem, align 4
  br i1 %22, label %dec_label_pc_53357, label %dec_label_pc_5331c

dec_label_pc_5331c:                               ; preds = %dec_label_pc_532f5
  %23 = ptrtoint ptr %stack_var_-8 to i64
  %24 = sext i32 %20 to i64
  %25 = add i64 %23, -22
  %26 = add i64 %25, %24
  %27 = inttoptr i64 %26 to ptr
  store i8 0, ptr %27, align 1
  %28 = bitcast ptr %stack_var_-30 to ptr
  %29 = call i32 @atoi(ptr nonnull %28)
  store i32 %29, ptr %stack_var_-84.0.ph.reg2mem, align 4
  br label %dec_label_pc_53357

dec_label_pc_53351.thread9:                       ; preds = %dec_label_pc_532d8, %dec_label_pc_532bf, %dec_label_pc_5326e
  %rsi.0.ph.ph.reload = load i64, ptr %rsi.0.ph.ph.reg2mem, align 8
  %30 = call i32 @close(i32 %4)
  store i32 -1, ptr %stack_var_-84.1.reg2mem, align 4
  store i64 %rsi.0.ph.ph.reload, ptr %rsi.1.reg2mem, align 8
  br label %dec_label_pc_53361

dec_label_pc_53357:                               ; preds = %dec_label_pc_5331c, %dec_label_pc_532f5
  %31 = ptrtoint ptr %stack_var_-30 to i64
  %stack_var_-84.0.ph.reload = load i32, ptr %stack_var_-84.0.ph.reg2mem, align 4
  %32 = call i32 @close(i32 %4)
  %33 = call i32 @close(i32 %18)
  store i32 %stack_var_-84.0.ph.reload, ptr %stack_var_-84.1.reg2mem, align 4
  store i64 %31, ptr %rsi.1.reg2mem, align 8
  br label %dec_label_pc_53361

dec_label_pc_53361:                               ; preds = %dec_label_pc_5323f, %dec_label_pc_53351.thread9, %dec_label_pc_53357, %dec_label_pc_5320e
  %34 = load i32, ptr @global_var_dc084, align 4
  %35 = icmp eq i32 %34, 5
  %36 = icmp eq i1 %35, false
  br i1 %36, label %dec_label_pc_5341f, label %dec_label_pc_53370

dec_label_pc_53370:                               ; preds = %dec_label_pc_53361
  %rsi.1.reload = load i64, ptr %rsi.1.reg2mem, align 8
  %stack_var_-84.1.reload = load i32, ptr %stack_var_-84.1.reg2mem, align 4
  %37 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv12.reg2mem, align 8
  br label %dec_label_pc_53387

dec_label_pc_53387:                               ; preds = %dec_label_pc_53387, %dec_label_pc_53370
  %indvars.iv12.reload = load i64, ptr %indvars.iv12.reg2mem, align 8
  %38 = mul i64 %indvars.iv12.reload, 4
  %39 = add i64 %38, %37
  %40 = inttoptr i64 %39 to ptr
  store i32 0, ptr %40, align 4
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12.reload, 1
  %exitcond14 = icmp eq i64 %indvars.iv.next13, 10
  store i64 %indvars.iv.next13, ptr %indvars.iv12.reg2mem, align 8
  br i1 %exitcond14, label %dec_label_pc_533ab, label %dec_label_pc_53387

dec_label_pc_533ab:                               ; preds = %dec_label_pc_53387
  %41 = icmp slt i32 %stack_var_-84.1.reload, 0
  br i1 %41, label %dec_label_pc_533fd, label %dec_label_pc_533b1

dec_label_pc_533b1:                               ; preds = %dec_label_pc_533ab
  %42 = sext i32 %stack_var_-84.1.reload to i64
  %43 = mul i64 %42, 4
  %44 = add i64 %37, %43
  %45 = inttoptr i64 %44 to ptr
  store i32 1, ptr %45, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_533d4

dec_label_pc_533d4:                               ; preds = %dec_label_pc_533d4, %dec_label_pc_533b1
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %46 = mul i64 %indvars.iv.reload, 4
  %47 = add i64 %46, %37
  %48 = inttoptr i64 %47 to ptr
  %49 = load i32, ptr %48, align 4
  call void @printIntLine(i32 %49)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_5340c, label %dec_label_pc_533d4

dec_label_pc_533fd:                               ; preds = %dec_label_pc_533ab
  call void @printLine(ptr @global_var_ae690)
  br label %dec_label_pc_5340c

dec_label_pc_5340c:                               ; preds = %dec_label_pc_533d4, %dec_label_pc_533fd
  %50 = icmp eq i64 %37, 0
  br i1 %50, label %dec_label_pc_5341f, label %dec_label_pc_53413

dec_label_pc_53413:                               ; preds = %dec_label_pc_5340c
  %51 = inttoptr i64 %37 to ptr
  %52 = and i64 %rsi.1.reload, 4294967295
  %53 = inttoptr i64 %52 to ptr
  call void @_ZdaPv(ptr %51, ptr %53)
  br label %dec_label_pc_5341f

dec_label_pc_5341f:                               ; preds = %dec_label_pc_53413, %dec_label_pc_5340c, %dec_label_pc_53361
  %54 = call i64 @__readfsqword(i64 40)
  %55 = icmp eq i64 %0, %54
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %55, label %dec_label_pc_53434, label %dec_label_pc_5342f

dec_label_pc_5342f:                               ; preds = %dec_label_pc_5341f
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_53434

dec_label_pc_53434:                               ; preds = %dec_label_pc_5342f, %dec_label_pc_5341f
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

