@global_var_ae918 = external constant [32 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_5671b:
  %rax.0.reg2mem = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv16.reg2mem = alloca i64, align 8
  %rsi.01011.reg2mem = alloca i64, align 8
  %stack_var_-104.0612.reg2mem = alloca i32, align 4
  %stack_var_-104.0.ph.reg2mem = alloca i32, align 4
  %rsi.0.ph.ph.reg2mem = alloca i64, align 8
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %2 = icmp eq i32 %1, -1
  store i32 -1, ptr %stack_var_-104.0612.reg2mem, align 4
  store i64 1, ptr %rsi.01011.reg2mem, align 8
  br i1 %2, label %dec_label_pc_56878, label %dec_label_pc_56785

dec_label_pc_56785:                               ; preds = %dec_label_pc_5671b
  %3 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %4 = call i16 @htons(i16 27015)
  %5 = ptrtoint ptr %stack_var_-56 to i64
  %6 = bitcast ptr %stack_var_-56 to ptr
  %7 = call i32 @bind(i32 %1, ptr nonnull %6, i32 16)
  %8 = icmp eq i32 %7, -1
  %9 = icmp eq i1 %8, false
  %10 = icmp eq i1 %9, false
  store i64 %5, ptr %rsi.0.ph.ph.reg2mem, align 8
  br i1 %10, label %dec_label_pc_56868.thread13, label %dec_label_pc_567d6

dec_label_pc_567d6:                               ; preds = %dec_label_pc_56785
  %11 = call i32 @listen(i32 %1, i32 5)
  %12 = icmp eq i32 %11, -1
  %13 = icmp eq i1 %12, false
  %14 = icmp eq i1 %13, false
  store i64 5, ptr %rsi.0.ph.ph.reg2mem, align 8
  br i1 %14, label %dec_label_pc_56868.thread13, label %dec_label_pc_567ef

dec_label_pc_567ef:                               ; preds = %dec_label_pc_567d6
  %15 = call i32 @accept(i32 %1, ptr null, ptr null)
  %16 = icmp eq i32 %15, -1
  store i64 0, ptr %rsi.0.ph.ph.reg2mem, align 8
  br i1 %16, label %dec_label_pc_56868.thread13, label %dec_label_pc_5680c

dec_label_pc_5680c:                               ; preds = %dec_label_pc_567ef
  %17 = call i32 @recv(i32 %15, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %18 = add i32 %17, 1
  %19 = icmp ult i32 %18, 2
  store i32 -1, ptr %stack_var_-104.0.ph.reg2mem, align 4
  br i1 %19, label %dec_label_pc_5686e, label %dec_label_pc_56833

dec_label_pc_56833:                               ; preds = %dec_label_pc_5680c
  %20 = ptrtoint ptr %stack_var_-8 to i64
  %21 = sext i32 %17 to i64
  %22 = add i64 %20, -22
  %23 = add i64 %22, %21
  %24 = inttoptr i64 %23 to ptr
  store i8 0, ptr %24, align 1
  %25 = bitcast ptr %stack_var_-30 to ptr
  %26 = call i32 @atoi(ptr nonnull %25)
  store i32 %26, ptr %stack_var_-104.0.ph.reg2mem, align 4
  br label %dec_label_pc_5686e

dec_label_pc_56868.thread13:                      ; preds = %dec_label_pc_567ef, %dec_label_pc_567d6, %dec_label_pc_56785
  %rsi.0.ph.ph.reload = load i64, ptr %rsi.0.ph.ph.reg2mem, align 8
  %27 = call i32 @close(i32 %1)
  store i32 -1, ptr %stack_var_-104.0612.reg2mem, align 4
  store i64 %rsi.0.ph.ph.reload, ptr %rsi.01011.reg2mem, align 8
  br label %dec_label_pc_56878

dec_label_pc_5686e:                               ; preds = %dec_label_pc_56833, %dec_label_pc_5680c
  %28 = ptrtoint ptr %stack_var_-30 to i64
  %stack_var_-104.0.ph.reload = load i32, ptr %stack_var_-104.0.ph.reg2mem, align 4
  %29 = call i32 @close(i32 %1)
  %30 = call i32 @close(i32 %15)
  store i32 %stack_var_-104.0.ph.reload, ptr %stack_var_-104.0612.reg2mem, align 4
  store i64 %28, ptr %rsi.01011.reg2mem, align 8
  br label %dec_label_pc_56878

dec_label_pc_56878:                               ; preds = %dec_label_pc_5671b, %dec_label_pc_56868.thread13, %dec_label_pc_5686e
  %rsi.01011.reload = load i64, ptr %rsi.01011.reg2mem, align 8
  %stack_var_-104.0612.reload = load i32, ptr %stack_var_-104.0612.reg2mem, align 4
  %31 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv16.reg2mem, align 8
  br label %dec_label_pc_568a1

dec_label_pc_568a1:                               ; preds = %dec_label_pc_568a1, %dec_label_pc_56878
  %indvars.iv16.reload = load i64, ptr %indvars.iv16.reg2mem, align 8
  %32 = mul i64 %indvars.iv16.reload, 4
  %33 = add i64 %32, %31
  %34 = inttoptr i64 %33 to ptr
  store i32 0, ptr %34, align 4
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16.reload, 1
  %exitcond18 = icmp eq i64 %indvars.iv.next17, 10
  store i64 %indvars.iv.next17, ptr %indvars.iv16.reg2mem, align 8
  br i1 %exitcond18, label %dec_label_pc_568c5, label %dec_label_pc_568a1

dec_label_pc_568c5:                               ; preds = %dec_label_pc_568a1
  %35 = icmp slt i32 %stack_var_-104.0612.reload, 0
  br i1 %35, label %dec_label_pc_56917, label %dec_label_pc_568cb

dec_label_pc_568cb:                               ; preds = %dec_label_pc_568c5
  %36 = sext i32 %stack_var_-104.0612.reload to i64
  %37 = mul i64 %36, 4
  %38 = add i64 %31, %37
  %39 = inttoptr i64 %38 to ptr
  store i32 1, ptr %39, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_568ee

dec_label_pc_568ee:                               ; preds = %dec_label_pc_568ee, %dec_label_pc_568cb
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %40 = mul i64 %indvars.iv.reload, 4
  %41 = add i64 %40, %31
  %42 = inttoptr i64 %41 to ptr
  %43 = load i32, ptr %42, align 4
  call void @printIntLine(i32 %43)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_56926, label %dec_label_pc_568ee

dec_label_pc_56917:                               ; preds = %dec_label_pc_568c5
  call void @printLine(ptr @global_var_ae918)
  br label %dec_label_pc_56926

dec_label_pc_56926:                               ; preds = %dec_label_pc_568ee, %dec_label_pc_56917
  %44 = icmp eq i64 %31, 0
  br i1 %44, label %dec_label_pc_56939, label %dec_label_pc_5692d

dec_label_pc_5692d:                               ; preds = %dec_label_pc_56926
  %45 = inttoptr i64 %31 to ptr
  %46 = and i64 %rsi.01011.reload, 4294967295
  %47 = inttoptr i64 %46 to ptr
  call void @_ZdaPv(ptr %45, ptr %47)
  br label %dec_label_pc_56939

dec_label_pc_56939:                               ; preds = %dec_label_pc_5692d, %dec_label_pc_56926
  %48 = call i64 @__readfsqword(i64 40)
  %49 = icmp eq i64 %0, %48
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %49, label %dec_label_pc_5694e, label %dec_label_pc_56949

dec_label_pc_56949:                               ; preds = %dec_label_pc_56939
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_5694e

dec_label_pc_5694e:                               ; preds = %dec_label_pc_56949, %dec_label_pc_56939
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

