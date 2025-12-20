@global_var_af958 = external constant [21 x i8]
@global_var_af970 = external constant [36 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32
@global_var_dc080 = external local_unnamed_addr global i32
@global_var_dc348 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_63ae9:
  %0 = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv7.reg2mem = alloca i64, align 8
  %stack_var_-40.0.reg2mem = alloca i32, align 4
  %1 = load i64, ptr %0, align 8
  %2 = load i32, ptr @global_var_dc080, align 4
  %3 = icmp eq i32 %2, 0
  store i32 -1, ptr %stack_var_-40.0.reg2mem, align 4
  br i1 %3, label %dec_label_pc_63b50, label %dec_label_pc_63b07

dec_label_pc_63b07:                               ; preds = %dec_label_pc_63ae9
  %4 = call i32 @rand()
  %5 = urem i32 %4, 2
  %6 = icmp eq i32 %5, 0
  %7 = call i32 @rand()
  %8 = mul i32 %7, 1073741824
  %9 = call i32 @rand()
  %10 = mul i32 %9, 32768
  %11 = xor i32 %10, %8
  %12 = call i32 @rand()
  %13 = xor i32 %11, %12
  %14 = sext i1 %6 to i32
  %storemerge3.in = xor i32 %13, %14
  store i32 %storemerge3.in, ptr %stack_var_-40.0.reg2mem, align 4
  br label %dec_label_pc_63b50

dec_label_pc_63b50:                               ; preds = %dec_label_pc_63b07, %dec_label_pc_63ae9
  %15 = load i32, ptr @global_var_dc348, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %dec_label_pc_63b6e, label %dec_label_pc_63b5a

dec_label_pc_63b5a:                               ; preds = %dec_label_pc_63b50
  call void @printLine(ptr @global_var_af958)
  br label %dec_label_pc_63c23

dec_label_pc_63b6e:                               ; preds = %dec_label_pc_63b50
  %stack_var_-40.0.reload = load i32, ptr %stack_var_-40.0.reg2mem, align 4
  %17 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv7.reg2mem, align 8
  br label %dec_label_pc_63b85

dec_label_pc_63b85:                               ; preds = %dec_label_pc_63b85, %dec_label_pc_63b6e
  %indvars.iv7.reload = load i64, ptr %indvars.iv7.reg2mem, align 8
  %18 = mul i64 %indvars.iv7.reload, 4
  %19 = add i64 %18, %17
  %20 = inttoptr i64 %19 to ptr
  store i32 0, ptr %20, align 4
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7.reload, 1
  %exitcond9 = icmp eq i64 %indvars.iv.next8, 10
  store i64 %indvars.iv.next8, ptr %indvars.iv7.reg2mem, align 8
  br i1 %exitcond9, label %dec_label_pc_63ba9, label %dec_label_pc_63b85

dec_label_pc_63ba9:                               ; preds = %dec_label_pc_63b85
  %21 = icmp ugt i32 %stack_var_-40.0.reload, 9
  br i1 %21, label %dec_label_pc_63c01, label %dec_label_pc_63bb5

dec_label_pc_63bb5:                               ; preds = %dec_label_pc_63ba9
  %22 = sext i32 %stack_var_-40.0.reload to i64
  %23 = mul i64 %22, 4
  %24 = add i64 %17, %23
  %25 = inttoptr i64 %24 to ptr
  store i32 1, ptr %25, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_63bd8

dec_label_pc_63bd8:                               ; preds = %dec_label_pc_63bd8, %dec_label_pc_63bb5
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %26 = mul i64 %indvars.iv.reload, 4
  %27 = add i64 %26, %17
  %28 = inttoptr i64 %27 to ptr
  %29 = load i32, ptr %28, align 4
  call void @printIntLine(i32 %29)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_63c10, label %dec_label_pc_63bd8

dec_label_pc_63c01:                               ; preds = %dec_label_pc_63ba9
  call void @printLine(ptr @global_var_af970)
  br label %dec_label_pc_63c10

dec_label_pc_63c10:                               ; preds = %dec_label_pc_63bd8, %dec_label_pc_63c01
  %30 = icmp eq i64 %17, 0
  br i1 %30, label %dec_label_pc_63c23, label %dec_label_pc_63c17

dec_label_pc_63c17:                               ; preds = %dec_label_pc_63c10
  %31 = inttoptr i64 %17 to ptr
  %32 = and i64 %1, 4294967295
  %33 = inttoptr i64 %32 to ptr
  call void @_ZdaPv(ptr %31, ptr %33)
  br label %dec_label_pc_63c23

dec_label_pc_63c23:                               ; preds = %dec_label_pc_63c17, %dec_label_pc_63c10, %dec_label_pc_63b5a
  ret i64 ptrtoint (ptr @0 to i64)
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

declare i32 @rand() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

