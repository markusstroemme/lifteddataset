@global_var_ae830 = external constant [21 x i8]
@global_var_ae848 = external constant [36 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32
@global_var_dc19c = external local_unnamed_addr global i32

define i64 @anon0(i32 %arg1) local_unnamed_addr {
dec_label_pc_5545a:
  %0 = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv5.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = load i32, ptr @global_var_dc19c, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_55487, label %dec_label_pc_55473

dec_label_pc_55473:                               ; preds = %dec_label_pc_5545a
  call void @printLine(ptr @global_var_ae830)
  br label %dec_label_pc_5553c

dec_label_pc_55487:                               ; preds = %dec_label_pc_5545a
  %4 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv5.reg2mem, align 8
  br label %dec_label_pc_5549e

dec_label_pc_5549e:                               ; preds = %dec_label_pc_5549e, %dec_label_pc_55487
  %indvars.iv5.reload = load i64, ptr %indvars.iv5.reg2mem, align 8
  %5 = mul i64 %indvars.iv5.reload, 4
  %6 = add i64 %5, %4
  %7 = inttoptr i64 %6 to ptr
  store i32 0, ptr %7, align 4
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5.reload, 1
  %exitcond7 = icmp eq i64 %indvars.iv.next6, 10
  store i64 %indvars.iv.next6, ptr %indvars.iv5.reg2mem, align 8
  br i1 %exitcond7, label %dec_label_pc_554c2, label %dec_label_pc_5549e

dec_label_pc_554c2:                               ; preds = %dec_label_pc_5549e
  %8 = icmp ugt i32 %arg1, 9
  br i1 %8, label %dec_label_pc_5551a, label %dec_label_pc_554ce

dec_label_pc_554ce:                               ; preds = %dec_label_pc_554c2
  %9 = sext i32 %arg1 to i64
  %10 = mul i64 %9, 4
  %11 = add i64 %4, %10
  %12 = inttoptr i64 %11 to ptr
  store i32 1, ptr %12, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_554f1

dec_label_pc_554f1:                               ; preds = %dec_label_pc_554f1, %dec_label_pc_554ce
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %13 = mul i64 %indvars.iv.reload, 4
  %14 = add i64 %13, %4
  %15 = inttoptr i64 %14 to ptr
  %16 = load i32, ptr %15, align 4
  call void @printIntLine(i32 %16)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_55529, label %dec_label_pc_554f1

dec_label_pc_5551a:                               ; preds = %dec_label_pc_554c2
  call void @printLine(ptr @global_var_ae848)
  br label %dec_label_pc_55529

dec_label_pc_55529:                               ; preds = %dec_label_pc_554f1, %dec_label_pc_5551a
  %17 = icmp eq i64 %4, 0
  br i1 %17, label %dec_label_pc_5553c, label %dec_label_pc_55530

dec_label_pc_55530:                               ; preds = %dec_label_pc_55529
  %18 = inttoptr i64 %4 to ptr
  %19 = and i64 %1, 4294967295
  %20 = inttoptr i64 %19 to ptr
  call void @_ZdaPv(ptr %18, ptr %20)
  br label %dec_label_pc_5553c

dec_label_pc_5553c:                               ; preds = %dec_label_pc_55530, %dec_label_pc_55529, %dec_label_pc_55473
  ret i64 ptrtoint (ptr @0 to i64)
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_5553f:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-72.047.reg2mem = alloca i32, align 4
  %stack_var_-72.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %2 = icmp eq i32 %1, -1
  store i32 -1, ptr %stack_var_-72.047.reg2mem, align 4
  br i1 %2, label %dec_label_pc_55683, label %dec_label_pc_55590

dec_label_pc_55590:                               ; preds = %dec_label_pc_5553f
  %3 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %4 = call i16 @htons(i16 27015)
  %5 = bitcast ptr %stack_var_-56 to ptr
  %6 = call i32 @bind(i32 %1, ptr nonnull %5, i32 16)
  %7 = icmp eq i32 %6, -1
  %8 = icmp eq i1 %7, false
  %9 = icmp eq i1 %8, false
  br i1 %9, label %dec_label_pc_55673.thread8, label %dec_label_pc_555e1

dec_label_pc_555e1:                               ; preds = %dec_label_pc_55590
  %10 = call i32 @listen(i32 %1, i32 5)
  %11 = icmp eq i32 %10, -1
  %12 = icmp eq i1 %11, false
  %13 = icmp eq i1 %12, false
  br i1 %13, label %dec_label_pc_55673.thread8, label %dec_label_pc_555fa

dec_label_pc_555fa:                               ; preds = %dec_label_pc_555e1
  %14 = call i32 @accept(i32 %1, ptr null, ptr null)
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %dec_label_pc_55673.thread8, label %dec_label_pc_55617

dec_label_pc_55617:                               ; preds = %dec_label_pc_555fa
  %16 = call i32 @recv(i32 %14, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %17 = add i32 %16, 1
  %18 = icmp ult i32 %17, 2
  store i32 -1, ptr %stack_var_-72.0.ph.reg2mem, align 4
  br i1 %18, label %dec_label_pc_55679, label %dec_label_pc_5563e

dec_label_pc_5563e:                               ; preds = %dec_label_pc_55617
  %19 = ptrtoint ptr %stack_var_-8 to i64
  %20 = sext i32 %16 to i64
  %21 = add i64 %19, -22
  %22 = add i64 %21, %20
  %23 = inttoptr i64 %22 to ptr
  store i8 0, ptr %23, align 1
  %24 = bitcast ptr %stack_var_-30 to ptr
  %25 = call i32 @atoi(ptr nonnull %24)
  store i32 %25, ptr %stack_var_-72.0.ph.reg2mem, align 4
  br label %dec_label_pc_55679

dec_label_pc_55673.thread8:                       ; preds = %dec_label_pc_555fa, %dec_label_pc_555e1, %dec_label_pc_55590
  %26 = call i32 @close(i32 %1)
  store i32 -1, ptr %stack_var_-72.047.reg2mem, align 4
  br label %dec_label_pc_55683

dec_label_pc_55679:                               ; preds = %dec_label_pc_5563e, %dec_label_pc_55617
  %stack_var_-72.0.ph.reload = load i32, ptr %stack_var_-72.0.ph.reg2mem, align 4
  %27 = call i32 @close(i32 %1)
  %28 = call i32 @close(i32 %14)
  store i32 %stack_var_-72.0.ph.reload, ptr %stack_var_-72.047.reg2mem, align 4
  br label %dec_label_pc_55683

dec_label_pc_55683:                               ; preds = %dec_label_pc_5553f, %dec_label_pc_55673.thread8, %dec_label_pc_55679
  %stack_var_-72.047.reload = load i32, ptr %stack_var_-72.047.reg2mem, align 4
  store i32 0, ptr @global_var_dc19c, align 4
  %29 = call i64 @anon0(i32 %stack_var_-72.047.reload)
  %30 = call i64 @__readfsqword(i64 40)
  %31 = icmp eq i64 %0, %30
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %31, label %dec_label_pc_556ac, label %dec_label_pc_556a7

dec_label_pc_556a7:                               ; preds = %dec_label_pc_55683
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_556ac

dec_label_pc_556ac:                               ; preds = %dec_label_pc_556a7, %dec_label_pc_55683
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

