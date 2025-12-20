@global_var_aa8f0 = external constant [16 x i8]
@global_var_aa920 = external constant [36 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32
@global_var_dc090 = external local_unnamed_addr global ptr

define i64 @anon0() local_unnamed_addr {
dec_label_pc_29874:
  %rax.0.reg2mem = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv11.reg2mem = alloca i64, align 8
  %indvars.iv14.reg2mem = alloca i64, align 8
  %indvars.iv17.reg2mem = alloca i64, align 8
  %stack_var_-60.0.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  %3 = icmp eq i1 %2, false
  %4 = icmp eq i1 %3, false
  store i64 0, ptr %stack_var_-30, align 8
  %5 = load ptr, ptr @global_var_dc090, align 8
  %6 = bitcast ptr %stack_var_-30 to ptr
  %7 = call ptr @fgets(ptr nonnull %6, i32 14, ptr %5)
  %8 = icmp eq ptr %7, null
  %9 = icmp eq i1 %8, false
  %10 = icmp eq i1 %9, false
  br i1 %4, label %dec_label_pc_298fd, label %dec_label_pc_298a4

dec_label_pc_298a4:                               ; preds = %dec_label_pc_29874
  br i1 %10, label %dec_label_pc_298ec, label %dec_label_pc_298db

dec_label_pc_298db:                               ; preds = %dec_label_pc_298a4
  %11 = call i32 @atoi(ptr nonnull %6)
  store i32 %11, ptr %stack_var_-60.0.reg2mem, align 4
  br label %dec_label_pc_29954

dec_label_pc_298ec:                               ; preds = %dec_label_pc_298a4
  call void @printLine(ptr @global_var_aa8f0)
  store i32 -1, ptr %stack_var_-60.0.reg2mem, align 4
  br label %dec_label_pc_29954

dec_label_pc_298fd:                               ; preds = %dec_label_pc_29874
  br i1 %10, label %dec_label_pc_29945, label %dec_label_pc_29934

dec_label_pc_29934:                               ; preds = %dec_label_pc_298fd
  %12 = call i32 @atoi(ptr nonnull %6)
  store i32 %12, ptr %stack_var_-60.0.reg2mem, align 4
  br label %dec_label_pc_29954

dec_label_pc_29945:                               ; preds = %dec_label_pc_298fd
  call void @printLine(ptr @global_var_aa8f0)
  store i32 -1, ptr %stack_var_-60.0.reg2mem, align 4
  br label %dec_label_pc_29954

dec_label_pc_29954:                               ; preds = %dec_label_pc_29945, %dec_label_pc_29934, %dec_label_pc_298ec, %dec_label_pc_298db
  %stack_var_-60.0.reload = load i32, ptr %stack_var_-60.0.reg2mem, align 4
  %13 = call i32 @globalReturnsTrueOrFalse()
  %14 = icmp eq i32 %13, 0
  %15 = icmp eq i1 %14, false
  %16 = icmp eq i1 %15, false
  %17 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv17.reg2mem, align 8
  store i64 0, ptr %indvars.iv11.reg2mem, align 8
  br i1 %16, label %dec_label_pc_29a3b, label %dec_label_pc_2997d

dec_label_pc_2997d:                               ; preds = %dec_label_pc_29954, %dec_label_pc_2997d
  %indvars.iv17.reload = load i64, ptr %indvars.iv17.reg2mem, align 8
  %18 = mul i64 %indvars.iv17.reload, 4
  %19 = add i64 %18, %17
  %20 = inttoptr i64 %19 to ptr
  store i32 0, ptr %20, align 4
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17.reload, 1
  %exitcond19 = icmp eq i64 %indvars.iv.next18, 10
  store i64 %indvars.iv.next18, ptr %indvars.iv17.reg2mem, align 8
  br i1 %exitcond19, label %dec_label_pc_299a1, label %dec_label_pc_2997d

dec_label_pc_299a1:                               ; preds = %dec_label_pc_2997d
  %21 = icmp ugt i32 %stack_var_-60.0.reload, 9
  br i1 %21, label %dec_label_pc_299f9, label %dec_label_pc_299ad

dec_label_pc_299ad:                               ; preds = %dec_label_pc_299a1
  %22 = sext i32 %stack_var_-60.0.reload to i64
  %23 = mul i64 %22, 4
  %24 = add i64 %17, %23
  %25 = inttoptr i64 %24 to ptr
  store i32 1, ptr %25, align 4
  store i64 0, ptr %indvars.iv14.reg2mem, align 8
  br label %dec_label_pc_299d0

dec_label_pc_299d0:                               ; preds = %dec_label_pc_299d0, %dec_label_pc_299ad
  %indvars.iv14.reload = load i64, ptr %indvars.iv14.reg2mem, align 8
  %26 = mul i64 %indvars.iv14.reload, 4
  %27 = add i64 %26, %17
  %28 = inttoptr i64 %27 to ptr
  %29 = load i32, ptr %28, align 4
  call void @printIntLine(i32 %29)
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14.reload, 1
  %exitcond16 = icmp eq i64 %indvars.iv.next15, 10
  store i64 %indvars.iv.next15, ptr %indvars.iv14.reg2mem, align 8
  br i1 %exitcond16, label %dec_label_pc_29a08, label %dec_label_pc_299d0

dec_label_pc_299f9:                               ; preds = %dec_label_pc_299a1
  call void @printLine(ptr @global_var_aa920)
  br label %dec_label_pc_29a08

dec_label_pc_29a08:                               ; preds = %dec_label_pc_299d0, %dec_label_pc_299f9
  %30 = icmp eq i64 %17, 0
  br i1 %30, label %dec_label_pc_29ad9, label %dec_label_pc_29a13

dec_label_pc_29a13:                               ; preds = %dec_label_pc_29a08
  %31 = inttoptr i64 %17 to ptr
  call void @_ZdaPv(ptr %31, ptr inttoptr (i64 14 to ptr))
  br label %dec_label_pc_29ad9

dec_label_pc_29a3b:                               ; preds = %dec_label_pc_29954, %dec_label_pc_29a3b
  %indvars.iv11.reload = load i64, ptr %indvars.iv11.reg2mem, align 8
  %32 = mul i64 %indvars.iv11.reload, 4
  %33 = add i64 %32, %17
  %34 = inttoptr i64 %33 to ptr
  store i32 0, ptr %34, align 4
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11.reload, 1
  %exitcond13 = icmp eq i64 %indvars.iv.next12, 10
  store i64 %indvars.iv.next12, ptr %indvars.iv11.reg2mem, align 8
  br i1 %exitcond13, label %dec_label_pc_29a5f, label %dec_label_pc_29a3b

dec_label_pc_29a5f:                               ; preds = %dec_label_pc_29a3b
  %35 = icmp ugt i32 %stack_var_-60.0.reload, 9
  br i1 %35, label %dec_label_pc_29ab7, label %dec_label_pc_29a6b

dec_label_pc_29a6b:                               ; preds = %dec_label_pc_29a5f
  %36 = sext i32 %stack_var_-60.0.reload to i64
  %37 = mul i64 %36, 4
  %38 = add i64 %17, %37
  %39 = inttoptr i64 %38 to ptr
  store i32 1, ptr %39, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_29a8e

dec_label_pc_29a8e:                               ; preds = %dec_label_pc_29a8e, %dec_label_pc_29a6b
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %40 = mul i64 %indvars.iv.reload, 4
  %41 = add i64 %40, %17
  %42 = inttoptr i64 %41 to ptr
  %43 = load i32, ptr %42, align 4
  call void @printIntLine(i32 %43)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_29ac6, label %dec_label_pc_29a8e

dec_label_pc_29ab7:                               ; preds = %dec_label_pc_29a5f
  call void @printLine(ptr @global_var_aa920)
  br label %dec_label_pc_29ac6

dec_label_pc_29ac6:                               ; preds = %dec_label_pc_29a8e, %dec_label_pc_29ab7
  %44 = icmp eq i64 %17, 0
  br i1 %44, label %dec_label_pc_29ad9, label %dec_label_pc_29acd

dec_label_pc_29acd:                               ; preds = %dec_label_pc_29ac6
  %45 = inttoptr i64 %17 to ptr
  call void @_ZdaPv(ptr %45, ptr inttoptr (i64 14 to ptr))
  br label %dec_label_pc_29ad9

dec_label_pc_29ad9:                               ; preds = %dec_label_pc_29acd, %dec_label_pc_29ac6, %dec_label_pc_29a13, %dec_label_pc_29a08
  %46 = call i64 @__readfsqword(i64 40)
  %47 = icmp eq i64 %0, %46
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %47, label %dec_label_pc_29aee, label %dec_label_pc_29ae9

dec_label_pc_29ae9:                               ; preds = %dec_label_pc_29ad9
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_29aee

dec_label_pc_29aee:                               ; preds = %dec_label_pc_29ae9, %dec_label_pc_29ad9
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

declare i32 @rand() local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare ptr @fgets(ptr, i32, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

