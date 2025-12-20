@global_var_a9268 = external constant [10 x i8]
@global_var_a9278 = external constant [32 x i8]
@global_var_a9298 = external constant [36 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_13955:
  %rax.0.reg2mem = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv13.reg2mem = alloca i64, align 8
  %indvars.iv16.reg2mem = alloca i64, align 8
  %indvars.iv19.reg2mem = alloca i64, align 8
  %rsi.1.reg2mem = alloca i64, align 8
  %stack_var_-92.1.reg2mem = alloca i32, align 4
  %rsi.0.ph.reg2mem = alloca i64, align 8
  %stack_var_-92.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  %3 = icmp eq i1 %2, false
  %4 = icmp eq i1 %3, false
  store i32 7, ptr %stack_var_-92.1.reg2mem, align 4
  br i1 %4, label %dec_label_pc_13a6c, label %dec_label_pc_13989

dec_label_pc_13989:                               ; preds = %dec_label_pc_13955
  %5 = call i32 @socket(i32 2, i32 1, i32 6)
  %6 = icmp eq i32 %5, -1
  store i32 -1, ptr %stack_var_-92.1.reg2mem, align 4
  store i64 1, ptr %rsi.1.reg2mem, align 8
  br i1 %6, label %dec_label_pc_13a6c, label %dec_label_pc_139b1

dec_label_pc_139b1:                               ; preds = %dec_label_pc_13989
  %7 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %8 = call i32 @inet_addr(ptr @global_var_a9268)
  %9 = call i16 @htons(i16 27015)
  %10 = ptrtoint ptr %stack_var_-56 to i64
  %11 = bitcast ptr %stack_var_-56 to ptr
  %12 = call i32 @connect(i32 %5, ptr nonnull %11, i32 16)
  %13 = icmp eq i32 %12, -1
  %14 = icmp eq i1 %13, false
  %15 = icmp eq i1 %14, false
  store i32 -1, ptr %stack_var_-92.0.ph.reg2mem, align 4
  store i64 %10, ptr %rsi.0.ph.reg2mem, align 8
  br i1 %15, label %dec_label_pc_13a59, label %dec_label_pc_13a0d

dec_label_pc_13a0d:                               ; preds = %dec_label_pc_139b1
  %16 = ptrtoint ptr %stack_var_-30 to i64
  %17 = call i32 @recv(i32 %5, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %18 = add i32 %17, 1
  %19 = icmp ult i32 %18, 2
  store i32 -1, ptr %stack_var_-92.0.ph.reg2mem, align 4
  store i64 %16, ptr %rsi.0.ph.reg2mem, align 8
  br i1 %19, label %dec_label_pc_13a59, label %dec_label_pc_13a34

dec_label_pc_13a34:                               ; preds = %dec_label_pc_13a0d
  %20 = ptrtoint ptr %stack_var_-8 to i64
  %21 = sext i32 %17 to i64
  %22 = add i64 %20, -22
  %23 = add i64 %22, %21
  %24 = inttoptr i64 %23 to ptr
  store i8 0, ptr %24, align 1
  %25 = bitcast ptr %stack_var_-30 to ptr
  %26 = call i32 @atoi(ptr nonnull %25)
  store i32 %26, ptr %stack_var_-92.0.ph.reg2mem, align 4
  store i64 %16, ptr %rsi.0.ph.reg2mem, align 8
  br label %dec_label_pc_13a59

dec_label_pc_13a59:                               ; preds = %dec_label_pc_139b1, %dec_label_pc_13a34, %dec_label_pc_13a0d
  %rsi.0.ph.reload = load i64, ptr %rsi.0.ph.reg2mem, align 8
  %stack_var_-92.0.ph.reload = load i32, ptr %stack_var_-92.0.ph.reg2mem, align 4
  %27 = call i32 @close(i32 %5)
  store i32 %stack_var_-92.0.ph.reload, ptr %stack_var_-92.1.reg2mem, align 4
  store i64 %rsi.0.ph.reload, ptr %rsi.1.reg2mem, align 8
  br label %dec_label_pc_13a6c

dec_label_pc_13a6c:                               ; preds = %dec_label_pc_13989, %dec_label_pc_13955, %dec_label_pc_13a59
  %rsi.1.reload = load i64, ptr %rsi.1.reg2mem, align 8
  %stack_var_-92.1.reload = load i32, ptr %stack_var_-92.1.reg2mem, align 4
  %28 = call i32 @globalReturnsTrueOrFalse()
  %29 = icmp eq i32 %28, 0
  %30 = icmp eq i1 %29, false
  %31 = icmp eq i1 %30, false
  %32 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv19.reg2mem, align 8
  store i64 0, ptr %indvars.iv13.reg2mem, align 8
  br i1 %31, label %dec_label_pc_13b4d, label %dec_label_pc_13a95

dec_label_pc_13a95:                               ; preds = %dec_label_pc_13a6c, %dec_label_pc_13a95
  %indvars.iv19.reload = load i64, ptr %indvars.iv19.reg2mem, align 8
  %33 = mul i64 %indvars.iv19.reload, 4
  %34 = add i64 %33, %32
  %35 = inttoptr i64 %34 to ptr
  store i32 0, ptr %35, align 4
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19.reload, 1
  %exitcond21 = icmp eq i64 %indvars.iv.next20, 10
  store i64 %indvars.iv.next20, ptr %indvars.iv19.reg2mem, align 8
  br i1 %exitcond21, label %dec_label_pc_13ab9, label %dec_label_pc_13a95

dec_label_pc_13ab9:                               ; preds = %dec_label_pc_13a95
  %36 = icmp slt i32 %stack_var_-92.1.reload, 0
  br i1 %36, label %dec_label_pc_13b0b, label %dec_label_pc_13abf

dec_label_pc_13abf:                               ; preds = %dec_label_pc_13ab9
  %37 = sext i32 %stack_var_-92.1.reload to i64
  %38 = mul i64 %37, 4
  %39 = add i64 %32, %38
  %40 = inttoptr i64 %39 to ptr
  store i32 1, ptr %40, align 4
  store i64 0, ptr %indvars.iv16.reg2mem, align 8
  br label %dec_label_pc_13ae2

dec_label_pc_13ae2:                               ; preds = %dec_label_pc_13ae2, %dec_label_pc_13abf
  %indvars.iv16.reload = load i64, ptr %indvars.iv16.reg2mem, align 8
  %41 = mul i64 %indvars.iv16.reload, 4
  %42 = add i64 %41, %32
  %43 = inttoptr i64 %42 to ptr
  %44 = load i32, ptr %43, align 4
  call void @printIntLine(i32 %44)
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16.reload, 1
  %exitcond18 = icmp eq i64 %indvars.iv.next17, 10
  store i64 %indvars.iv.next17, ptr %indvars.iv16.reg2mem, align 8
  br i1 %exitcond18, label %dec_label_pc_13b1a, label %dec_label_pc_13ae2

dec_label_pc_13b0b:                               ; preds = %dec_label_pc_13ab9
  call void @printLine(ptr @global_var_a9278)
  br label %dec_label_pc_13b1a

dec_label_pc_13b1a:                               ; preds = %dec_label_pc_13ae2, %dec_label_pc_13b0b
  %45 = icmp eq i64 %32, 0
  br i1 %45, label %dec_label_pc_13beb, label %dec_label_pc_13b25

dec_label_pc_13b25:                               ; preds = %dec_label_pc_13b1a
  %46 = inttoptr i64 %32 to ptr
  %47 = and i64 %rsi.1.reload, 4294967295
  %48 = inttoptr i64 %47 to ptr
  call void @_ZdaPv(ptr %46, ptr %48)
  br label %dec_label_pc_13beb

dec_label_pc_13b4d:                               ; preds = %dec_label_pc_13a6c, %dec_label_pc_13b4d
  %indvars.iv13.reload = load i64, ptr %indvars.iv13.reg2mem, align 8
  %49 = mul i64 %indvars.iv13.reload, 4
  %50 = add i64 %49, %32
  %51 = inttoptr i64 %50 to ptr
  store i32 0, ptr %51, align 4
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13.reload, 1
  %exitcond15 = icmp eq i64 %indvars.iv.next14, 10
  store i64 %indvars.iv.next14, ptr %indvars.iv13.reg2mem, align 8
  br i1 %exitcond15, label %dec_label_pc_13b71, label %dec_label_pc_13b4d

dec_label_pc_13b71:                               ; preds = %dec_label_pc_13b4d
  %52 = icmp ugt i32 %stack_var_-92.1.reload, 9
  br i1 %52, label %dec_label_pc_13bc9, label %dec_label_pc_13b7d

dec_label_pc_13b7d:                               ; preds = %dec_label_pc_13b71
  %53 = sext i32 %stack_var_-92.1.reload to i64
  %54 = mul i64 %53, 4
  %55 = add i64 %32, %54
  %56 = inttoptr i64 %55 to ptr
  store i32 1, ptr %56, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_13ba0

dec_label_pc_13ba0:                               ; preds = %dec_label_pc_13ba0, %dec_label_pc_13b7d
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %57 = mul i64 %indvars.iv.reload, 4
  %58 = add i64 %57, %32
  %59 = inttoptr i64 %58 to ptr
  %60 = load i32, ptr %59, align 4
  call void @printIntLine(i32 %60)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_13bd8, label %dec_label_pc_13ba0

dec_label_pc_13bc9:                               ; preds = %dec_label_pc_13b71
  call void @printLine(ptr @global_var_a9298)
  br label %dec_label_pc_13bd8

dec_label_pc_13bd8:                               ; preds = %dec_label_pc_13ba0, %dec_label_pc_13bc9
  %61 = icmp eq i64 %32, 0
  br i1 %61, label %dec_label_pc_13beb, label %dec_label_pc_13bdf

dec_label_pc_13bdf:                               ; preds = %dec_label_pc_13bd8
  %62 = inttoptr i64 %32 to ptr
  %63 = and i64 %rsi.1.reload, 4294967295
  %64 = inttoptr i64 %63 to ptr
  call void @_ZdaPv(ptr %62, ptr %64)
  br label %dec_label_pc_13beb

dec_label_pc_13beb:                               ; preds = %dec_label_pc_13bdf, %dec_label_pc_13bd8, %dec_label_pc_13b25, %dec_label_pc_13b1a
  %65 = call i64 @__readfsqword(i64 40)
  %66 = icmp eq i64 %0, %65
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %66, label %dec_label_pc_13c00, label %dec_label_pc_13bfb

dec_label_pc_13bfb:                               ; preds = %dec_label_pc_13beb
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_13c00

dec_label_pc_13c00:                               ; preds = %dec_label_pc_13bfb, %dec_label_pc_13beb
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

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_920f2:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i16 @htons(i16) local_unnamed_addr

declare i32 @socket(i32, i32, i32) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

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

