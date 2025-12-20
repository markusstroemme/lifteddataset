@global_var_af9b8 = external constant [21 x i8]
@global_var_af9d0 = external constant [36 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_64086:
  %0 = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv7.reg2mem = alloca i64, align 8
  %stack_var_-40.0.reg2mem = alloca i32, align 4
  %1 = load i64, ptr %0, align 8
  %2 = call i32 @globalReturnsTrue()
  %3 = icmp eq i32 %2, 0
  %4 = icmp eq i1 %3, false
  %5 = icmp eq i1 %4, false
  store i32 -1, ptr %stack_var_-40.0.reg2mem, align 4
  br i1 %5, label %dec_label_pc_640f1, label %dec_label_pc_640a8

dec_label_pc_640a8:                               ; preds = %dec_label_pc_64086
  %6 = call i32 @rand()
  %7 = urem i32 %6, 2
  %8 = icmp eq i32 %7, 0
  %9 = call i32 @rand()
  %10 = mul i32 %9, 1073741824
  %11 = call i32 @rand()
  %12 = mul i32 %11, 32768
  %13 = xor i32 %12, %10
  %14 = call i32 @rand()
  %15 = xor i32 %13, %14
  %16 = sext i1 %8 to i32
  %storemerge3.in = xor i32 %15, %16
  store i32 %storemerge3.in, ptr %stack_var_-40.0.reg2mem, align 4
  br label %dec_label_pc_640f1

dec_label_pc_640f1:                               ; preds = %dec_label_pc_640a8, %dec_label_pc_64086
  %17 = call i32 @globalReturnsFalse()
  %18 = icmp eq i32 %17, 0
  %19 = icmp eq i1 %18, false
  %20 = icmp eq i1 %19, false
  br i1 %20, label %dec_label_pc_64113, label %dec_label_pc_640ff

dec_label_pc_640ff:                               ; preds = %dec_label_pc_640f1
  call void @printLine(ptr @global_var_af9b8)
  br label %dec_label_pc_641c8

dec_label_pc_64113:                               ; preds = %dec_label_pc_640f1
  %stack_var_-40.0.reload = load i32, ptr %stack_var_-40.0.reg2mem, align 4
  %21 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv7.reg2mem, align 8
  br label %dec_label_pc_6412a

dec_label_pc_6412a:                               ; preds = %dec_label_pc_6412a, %dec_label_pc_64113
  %indvars.iv7.reload = load i64, ptr %indvars.iv7.reg2mem, align 8
  %22 = mul i64 %indvars.iv7.reload, 4
  %23 = add i64 %22, %21
  %24 = inttoptr i64 %23 to ptr
  store i32 0, ptr %24, align 4
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7.reload, 1
  %exitcond9 = icmp eq i64 %indvars.iv.next8, 10
  store i64 %indvars.iv.next8, ptr %indvars.iv7.reg2mem, align 8
  br i1 %exitcond9, label %dec_label_pc_6414e, label %dec_label_pc_6412a

dec_label_pc_6414e:                               ; preds = %dec_label_pc_6412a
  %25 = icmp ugt i32 %stack_var_-40.0.reload, 9
  br i1 %25, label %dec_label_pc_641a6, label %dec_label_pc_6415a

dec_label_pc_6415a:                               ; preds = %dec_label_pc_6414e
  %26 = sext i32 %stack_var_-40.0.reload to i64
  %27 = mul i64 %26, 4
  %28 = add i64 %21, %27
  %29 = inttoptr i64 %28 to ptr
  store i32 1, ptr %29, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_6417d

dec_label_pc_6417d:                               ; preds = %dec_label_pc_6417d, %dec_label_pc_6415a
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %30 = mul i64 %indvars.iv.reload, 4
  %31 = add i64 %30, %21
  %32 = inttoptr i64 %31 to ptr
  %33 = load i32, ptr %32, align 4
  call void @printIntLine(i32 %33)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_641b5, label %dec_label_pc_6417d

dec_label_pc_641a6:                               ; preds = %dec_label_pc_6414e
  call void @printLine(ptr @global_var_af9d0)
  br label %dec_label_pc_641b5

dec_label_pc_641b5:                               ; preds = %dec_label_pc_6417d, %dec_label_pc_641a6
  %34 = icmp eq i64 %21, 0
  br i1 %34, label %dec_label_pc_641c8, label %dec_label_pc_641bc

dec_label_pc_641bc:                               ; preds = %dec_label_pc_641b5
  %35 = inttoptr i64 %21 to ptr
  %36 = and i64 %1, 4294967295
  %37 = inttoptr i64 %36 to ptr
  call void @_ZdaPv(ptr %35, ptr %37)
  br label %dec_label_pc_641c8

dec_label_pc_641c8:                               ; preds = %dec_label_pc_641bc, %dec_label_pc_641b5, %dec_label_pc_640ff
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

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_920d4:
  ret i32 1
}

define i32 @globalReturnsFalse() local_unnamed_addr {
dec_label_pc_920e3:
  ret i32 0
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

