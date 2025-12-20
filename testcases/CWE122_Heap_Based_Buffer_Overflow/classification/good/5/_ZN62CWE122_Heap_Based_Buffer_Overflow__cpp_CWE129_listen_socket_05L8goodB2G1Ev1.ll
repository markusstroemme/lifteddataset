@global_var_ae378 = external constant [21 x i8]
@global_var_ae390 = external constant [36 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32
@global_var_dc048 = external local_unnamed_addr global i32
@global_var_dc194 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_4e753:
  %rax.0.reg2mem = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv14.reg2mem = alloca i64, align 8
  %rsi.1.reg2mem = alloca i64, align 8
  %stack_var_-84.1.reg2mem = alloca i32, align 4
  %stack_var_-84.0.ph.reg2mem = alloca i32, align 4
  %rsi.0.ph.ph.reg2mem = alloca i64, align 8
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_dc048, align 4
  %2 = icmp eq i32 %1, 0
  store i32 -1, ptr %stack_var_-84.1.reg2mem, align 4
  br i1 %2, label %dec_label_pc_4e8a5, label %dec_label_pc_4e783

dec_label_pc_4e783:                               ; preds = %dec_label_pc_4e753
  %3 = call i32 @socket(i32 2, i32 1, i32 6)
  %4 = icmp eq i32 %3, -1
  store i32 -1, ptr %stack_var_-84.1.reg2mem, align 4
  store i64 1, ptr %rsi.1.reg2mem, align 8
  br i1 %4, label %dec_label_pc_4e8a5, label %dec_label_pc_4e7b2

dec_label_pc_4e7b2:                               ; preds = %dec_label_pc_4e783
  %5 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %6 = call i16 @htons(i16 27015)
  %7 = ptrtoint ptr %stack_var_-56 to i64
  %8 = bitcast ptr %stack_var_-56 to ptr
  %9 = call i32 @bind(i32 %3, ptr nonnull %8, i32 16)
  %10 = icmp eq i32 %9, -1
  %11 = icmp eq i1 %10, false
  %12 = icmp eq i1 %11, false
  store i64 %7, ptr %rsi.0.ph.ph.reg2mem, align 8
  br i1 %12, label %dec_label_pc_4e895.thread11, label %dec_label_pc_4e803

dec_label_pc_4e803:                               ; preds = %dec_label_pc_4e7b2
  %13 = call i32 @listen(i32 %3, i32 5)
  %14 = icmp eq i32 %13, -1
  %15 = icmp eq i1 %14, false
  %16 = icmp eq i1 %15, false
  store i64 5, ptr %rsi.0.ph.ph.reg2mem, align 8
  br i1 %16, label %dec_label_pc_4e895.thread11, label %dec_label_pc_4e81c

dec_label_pc_4e81c:                               ; preds = %dec_label_pc_4e803
  %17 = call i32 @accept(i32 %3, ptr null, ptr null)
  %18 = icmp eq i32 %17, -1
  store i64 0, ptr %rsi.0.ph.ph.reg2mem, align 8
  br i1 %18, label %dec_label_pc_4e895.thread11, label %dec_label_pc_4e839

dec_label_pc_4e839:                               ; preds = %dec_label_pc_4e81c
  %19 = call i32 @recv(i32 %17, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %20 = add i32 %19, 1
  %21 = icmp ult i32 %20, 2
  store i32 -1, ptr %stack_var_-84.0.ph.reg2mem, align 4
  br i1 %21, label %dec_label_pc_4e89b, label %dec_label_pc_4e860

dec_label_pc_4e860:                               ; preds = %dec_label_pc_4e839
  %22 = ptrtoint ptr %stack_var_-8 to i64
  %23 = sext i32 %19 to i64
  %24 = add i64 %22, -22
  %25 = add i64 %24, %23
  %26 = inttoptr i64 %25 to ptr
  store i8 0, ptr %26, align 1
  %27 = bitcast ptr %stack_var_-30 to ptr
  %28 = call i32 @atoi(ptr nonnull %27)
  store i32 %28, ptr %stack_var_-84.0.ph.reg2mem, align 4
  br label %dec_label_pc_4e89b

dec_label_pc_4e895.thread11:                      ; preds = %dec_label_pc_4e81c, %dec_label_pc_4e803, %dec_label_pc_4e7b2
  %rsi.0.ph.ph.reload = load i64, ptr %rsi.0.ph.ph.reg2mem, align 8
  %29 = call i32 @close(i32 %3)
  store i32 -1, ptr %stack_var_-84.1.reg2mem, align 4
  store i64 %rsi.0.ph.ph.reload, ptr %rsi.1.reg2mem, align 8
  br label %dec_label_pc_4e8a5

dec_label_pc_4e89b:                               ; preds = %dec_label_pc_4e860, %dec_label_pc_4e839
  %30 = ptrtoint ptr %stack_var_-30 to i64
  %stack_var_-84.0.ph.reload = load i32, ptr %stack_var_-84.0.ph.reg2mem, align 4
  %31 = call i32 @close(i32 %3)
  %32 = call i32 @close(i32 %17)
  store i32 %stack_var_-84.0.ph.reload, ptr %stack_var_-84.1.reg2mem, align 4
  store i64 %30, ptr %rsi.1.reg2mem, align 8
  br label %dec_label_pc_4e8a5

dec_label_pc_4e8a5:                               ; preds = %dec_label_pc_4e783, %dec_label_pc_4e895.thread11, %dec_label_pc_4e89b, %dec_label_pc_4e753
  %33 = load i32, ptr @global_var_dc194, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %dec_label_pc_4e8c3, label %dec_label_pc_4e8af

dec_label_pc_4e8af:                               ; preds = %dec_label_pc_4e8a5
  call void @printLine(ptr @global_var_ae378)
  br label %dec_label_pc_4e978

dec_label_pc_4e8c3:                               ; preds = %dec_label_pc_4e8a5
  %rsi.1.reload = load i64, ptr %rsi.1.reg2mem, align 8
  %stack_var_-84.1.reload = load i32, ptr %stack_var_-84.1.reg2mem, align 4
  %35 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv14.reg2mem, align 8
  br label %dec_label_pc_4e8da

dec_label_pc_4e8da:                               ; preds = %dec_label_pc_4e8da, %dec_label_pc_4e8c3
  %indvars.iv14.reload = load i64, ptr %indvars.iv14.reg2mem, align 8
  %36 = mul i64 %indvars.iv14.reload, 4
  %37 = add i64 %36, %35
  %38 = inttoptr i64 %37 to ptr
  store i32 0, ptr %38, align 4
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14.reload, 1
  %exitcond16 = icmp eq i64 %indvars.iv.next15, 10
  store i64 %indvars.iv.next15, ptr %indvars.iv14.reg2mem, align 8
  br i1 %exitcond16, label %dec_label_pc_4e8fe, label %dec_label_pc_4e8da

dec_label_pc_4e8fe:                               ; preds = %dec_label_pc_4e8da
  %39 = icmp ugt i32 %stack_var_-84.1.reload, 9
  br i1 %39, label %dec_label_pc_4e956, label %dec_label_pc_4e90a

dec_label_pc_4e90a:                               ; preds = %dec_label_pc_4e8fe
  %40 = sext i32 %stack_var_-84.1.reload to i64
  %41 = mul i64 %40, 4
  %42 = add i64 %35, %41
  %43 = inttoptr i64 %42 to ptr
  store i32 1, ptr %43, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_4e92d

dec_label_pc_4e92d:                               ; preds = %dec_label_pc_4e92d, %dec_label_pc_4e90a
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %44 = mul i64 %indvars.iv.reload, 4
  %45 = add i64 %44, %35
  %46 = inttoptr i64 %45 to ptr
  %47 = load i32, ptr %46, align 4
  call void @printIntLine(i32 %47)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_4e965, label %dec_label_pc_4e92d

dec_label_pc_4e956:                               ; preds = %dec_label_pc_4e8fe
  call void @printLine(ptr @global_var_ae390)
  br label %dec_label_pc_4e965

dec_label_pc_4e965:                               ; preds = %dec_label_pc_4e92d, %dec_label_pc_4e956
  %48 = icmp eq i64 %35, 0
  br i1 %48, label %dec_label_pc_4e978, label %dec_label_pc_4e96c

dec_label_pc_4e96c:                               ; preds = %dec_label_pc_4e965
  %49 = inttoptr i64 %35 to ptr
  %50 = and i64 %rsi.1.reload, 4294967295
  %51 = inttoptr i64 %50 to ptr
  call void @_ZdaPv(ptr %49, ptr %51)
  br label %dec_label_pc_4e978

dec_label_pc_4e978:                               ; preds = %dec_label_pc_4e96c, %dec_label_pc_4e965, %dec_label_pc_4e8af
  %52 = call i64 @__readfsqword(i64 40)
  %53 = icmp eq i64 %0, %52
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %53, label %dec_label_pc_4e98d, label %dec_label_pc_4e988

dec_label_pc_4e988:                               ; preds = %dec_label_pc_4e978
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_4e98d

dec_label_pc_4e98d:                               ; preds = %dec_label_pc_4e988, %dec_label_pc_4e978
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

