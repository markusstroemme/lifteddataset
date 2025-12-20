@global_var_ae6b0 = external constant [21 x i8]
@global_var_ae6c8 = external constant [36 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32
@global_var_dc084 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_53436:
  %rax.0.reg2mem = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv14.reg2mem = alloca i64, align 8
  %rsi.1.reg2mem = alloca i64, align 8
  %stack_var_-84.1.reg2mem = alloca i32, align 4
  %.reg2mem = alloca i32, align 4
  %rsi.1.ph.reg2mem = alloca i64, align 8
  %stack_var_-84.1.ph.reg2mem = alloca i32, align 4
  %stack_var_-84.0.ph.reg2mem = alloca i32, align 4
  %rsi.0.ph.ph.reg2mem = alloca i64, align 8
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_dc084, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store i32 %1, ptr %.reg2mem, align 4
  store i32 -1, ptr %stack_var_-84.1.reg2mem, align 4
  br i1 %3, label %dec_label_pc_53589, label %dec_label_pc_53467

dec_label_pc_53467:                               ; preds = %dec_label_pc_53436
  %4 = call i32 @socket(i32 2, i32 1, i32 6)
  %5 = icmp eq i32 %4, -1
  store i32 -1, ptr %stack_var_-84.1.ph.reg2mem, align 4
  store i64 1, ptr %rsi.1.ph.reg2mem, align 8
  br i1 %5, label %dec_label_pc_53589thread-pre-split, label %dec_label_pc_53496

dec_label_pc_53496:                               ; preds = %dec_label_pc_53467
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
  br i1 %13, label %dec_label_pc_53579.thread11, label %dec_label_pc_534e7

dec_label_pc_534e7:                               ; preds = %dec_label_pc_53496
  %14 = call i32 @listen(i32 %4, i32 5)
  %15 = icmp eq i32 %14, -1
  %16 = icmp eq i1 %15, false
  %17 = icmp eq i1 %16, false
  store i64 5, ptr %rsi.0.ph.ph.reg2mem, align 8
  br i1 %17, label %dec_label_pc_53579.thread11, label %dec_label_pc_53500

dec_label_pc_53500:                               ; preds = %dec_label_pc_534e7
  %18 = call i32 @accept(i32 %4, ptr null, ptr null)
  %19 = icmp eq i32 %18, -1
  store i64 0, ptr %rsi.0.ph.ph.reg2mem, align 8
  br i1 %19, label %dec_label_pc_53579.thread11, label %dec_label_pc_5351d

dec_label_pc_5351d:                               ; preds = %dec_label_pc_53500
  %20 = call i32 @recv(i32 %18, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %21 = add i32 %20, 1
  %22 = icmp ult i32 %21, 2
  store i32 -1, ptr %stack_var_-84.0.ph.reg2mem, align 4
  br i1 %22, label %dec_label_pc_5357f, label %dec_label_pc_53544

dec_label_pc_53544:                               ; preds = %dec_label_pc_5351d
  %23 = ptrtoint ptr %stack_var_-8 to i64
  %24 = sext i32 %20 to i64
  %25 = add i64 %23, -22
  %26 = add i64 %25, %24
  %27 = inttoptr i64 %26 to ptr
  store i8 0, ptr %27, align 1
  %28 = bitcast ptr %stack_var_-30 to ptr
  %29 = call i32 @atoi(ptr nonnull %28)
  store i32 %29, ptr %stack_var_-84.0.ph.reg2mem, align 4
  br label %dec_label_pc_5357f

dec_label_pc_53579.thread11:                      ; preds = %dec_label_pc_53500, %dec_label_pc_534e7, %dec_label_pc_53496
  %rsi.0.ph.ph.reload = load i64, ptr %rsi.0.ph.ph.reg2mem, align 8
  %30 = call i32 @close(i32 %4)
  store i32 -1, ptr %stack_var_-84.1.ph.reg2mem, align 4
  store i64 %rsi.0.ph.ph.reload, ptr %rsi.1.ph.reg2mem, align 8
  br label %dec_label_pc_53589thread-pre-split

dec_label_pc_5357f:                               ; preds = %dec_label_pc_53544, %dec_label_pc_5351d
  %31 = ptrtoint ptr %stack_var_-30 to i64
  %stack_var_-84.0.ph.reload = load i32, ptr %stack_var_-84.0.ph.reg2mem, align 4
  %32 = call i32 @close(i32 %4)
  %33 = call i32 @close(i32 %18)
  store i32 %stack_var_-84.0.ph.reload, ptr %stack_var_-84.1.ph.reg2mem, align 4
  store i64 %31, ptr %rsi.1.ph.reg2mem, align 8
  br label %dec_label_pc_53589thread-pre-split

dec_label_pc_53589thread-pre-split:               ; preds = %dec_label_pc_53467, %dec_label_pc_5357f, %dec_label_pc_53579.thread11
  %rsi.1.ph.reload = load i64, ptr %rsi.1.ph.reg2mem, align 8
  %stack_var_-84.1.ph.reload = load i32, ptr %stack_var_-84.1.ph.reg2mem, align 4
  %.pr = load i32, ptr @global_var_dc084, align 4
  store i32 %.pr, ptr %.reg2mem, align 4
  store i32 %stack_var_-84.1.ph.reload, ptr %stack_var_-84.1.reg2mem, align 4
  store i64 %rsi.1.ph.reload, ptr %rsi.1.reg2mem, align 8
  br label %dec_label_pc_53589

dec_label_pc_53589:                               ; preds = %dec_label_pc_53589thread-pre-split, %dec_label_pc_53436
  %.reload = load i32, ptr %.reg2mem, align 4
  %34 = icmp eq i32 %.reload, 5
  br i1 %34, label %dec_label_pc_535a8, label %dec_label_pc_53594

dec_label_pc_53594:                               ; preds = %dec_label_pc_53589
  call void @printLine(ptr @global_var_ae6b0)
  br label %dec_label_pc_5365d

dec_label_pc_535a8:                               ; preds = %dec_label_pc_53589
  %rsi.1.reload = load i64, ptr %rsi.1.reg2mem, align 8
  %stack_var_-84.1.reload = load i32, ptr %stack_var_-84.1.reg2mem, align 4
  %35 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv14.reg2mem, align 8
  br label %dec_label_pc_535bf

dec_label_pc_535bf:                               ; preds = %dec_label_pc_535bf, %dec_label_pc_535a8
  %indvars.iv14.reload = load i64, ptr %indvars.iv14.reg2mem, align 8
  %36 = mul i64 %indvars.iv14.reload, 4
  %37 = add i64 %36, %35
  %38 = inttoptr i64 %37 to ptr
  store i32 0, ptr %38, align 4
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14.reload, 1
  %exitcond16 = icmp eq i64 %indvars.iv.next15, 10
  store i64 %indvars.iv.next15, ptr %indvars.iv14.reg2mem, align 8
  br i1 %exitcond16, label %dec_label_pc_535e3, label %dec_label_pc_535bf

dec_label_pc_535e3:                               ; preds = %dec_label_pc_535bf
  %39 = icmp ugt i32 %stack_var_-84.1.reload, 9
  br i1 %39, label %dec_label_pc_5363b, label %dec_label_pc_535ef

dec_label_pc_535ef:                               ; preds = %dec_label_pc_535e3
  %40 = sext i32 %stack_var_-84.1.reload to i64
  %41 = mul i64 %40, 4
  %42 = add i64 %35, %41
  %43 = inttoptr i64 %42 to ptr
  store i32 1, ptr %43, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_53612

dec_label_pc_53612:                               ; preds = %dec_label_pc_53612, %dec_label_pc_535ef
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %44 = mul i64 %indvars.iv.reload, 4
  %45 = add i64 %44, %35
  %46 = inttoptr i64 %45 to ptr
  %47 = load i32, ptr %46, align 4
  call void @printIntLine(i32 %47)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_5364a, label %dec_label_pc_53612

dec_label_pc_5363b:                               ; preds = %dec_label_pc_535e3
  call void @printLine(ptr @global_var_ae6c8)
  br label %dec_label_pc_5364a

dec_label_pc_5364a:                               ; preds = %dec_label_pc_53612, %dec_label_pc_5363b
  %48 = icmp eq i64 %35, 0
  br i1 %48, label %dec_label_pc_5365d, label %dec_label_pc_53651

dec_label_pc_53651:                               ; preds = %dec_label_pc_5364a
  %49 = inttoptr i64 %35 to ptr
  %50 = and i64 %rsi.1.reload, 4294967295
  %51 = inttoptr i64 %50 to ptr
  call void @_ZdaPv(ptr %49, ptr %51)
  br label %dec_label_pc_5365d

dec_label_pc_5365d:                               ; preds = %dec_label_pc_53651, %dec_label_pc_5364a, %dec_label_pc_53594
  %52 = call i64 @__readfsqword(i64 40)
  %53 = icmp eq i64 %0, %52
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %53, label %dec_label_pc_53672, label %dec_label_pc_5366d

dec_label_pc_5366d:                               ; preds = %dec_label_pc_5365d
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_53672

dec_label_pc_53672:                               ; preds = %dec_label_pc_5366d, %dec_label_pc_5365d
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

