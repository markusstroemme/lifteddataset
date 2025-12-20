@global_var_af838 = external constant [21 x i8]
@global_var_af850 = external constant [36 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32
@global_var_dc054 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_629dc:
  %0 = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv7.reg2mem = alloca i64, align 8
  %stack_var_-40.0.reg2mem = alloca i32, align 4
  %.reg2mem = alloca i32, align 4
  %1 = load i64, ptr %0, align 8
  %2 = load i32, ptr @global_var_dc054, align 4
  %3 = icmp eq i32 %2, 5
  %4 = icmp eq i1 %3, false
  store i32 %2, ptr %.reg2mem, align 4
  store i32 -1, ptr %stack_var_-40.0.reg2mem, align 4
  br i1 %4, label %dec_label_pc_62a44, label %dec_label_pc_629fb

dec_label_pc_629fb:                               ; preds = %dec_label_pc_629dc
  %5 = call i32 @rand()
  %6 = urem i32 %5, 2
  %7 = icmp eq i32 %6, 0
  %8 = call i32 @rand()
  %9 = mul i32 %8, 1073741824
  %10 = call i32 @rand()
  %11 = mul i32 %10, 32768
  %12 = xor i32 %11, %9
  %13 = call i32 @rand()
  %14 = xor i32 %12, %13
  %15 = sext i1 %7 to i32
  %storemerge3.in = xor i32 %14, %15
  %.pr = load i32, ptr @global_var_dc054, align 4
  store i32 %.pr, ptr %.reg2mem, align 4
  store i32 %storemerge3.in, ptr %stack_var_-40.0.reg2mem, align 4
  br label %dec_label_pc_62a44

dec_label_pc_62a44:                               ; preds = %dec_label_pc_629fb, %dec_label_pc_629dc
  %.reload = load i32, ptr %.reg2mem, align 4
  %16 = icmp eq i32 %.reload, 5
  br i1 %16, label %dec_label_pc_62a63, label %dec_label_pc_62a4f

dec_label_pc_62a4f:                               ; preds = %dec_label_pc_62a44
  call void @printLine(ptr @global_var_af838)
  br label %dec_label_pc_62b18

dec_label_pc_62a63:                               ; preds = %dec_label_pc_62a44
  %stack_var_-40.0.reload = load i32, ptr %stack_var_-40.0.reg2mem, align 4
  %17 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv7.reg2mem, align 8
  br label %dec_label_pc_62a7a

dec_label_pc_62a7a:                               ; preds = %dec_label_pc_62a7a, %dec_label_pc_62a63
  %indvars.iv7.reload = load i64, ptr %indvars.iv7.reg2mem, align 8
  %18 = mul i64 %indvars.iv7.reload, 4
  %19 = add i64 %18, %17
  %20 = inttoptr i64 %19 to ptr
  store i32 0, ptr %20, align 4
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7.reload, 1
  %exitcond9 = icmp eq i64 %indvars.iv.next8, 10
  store i64 %indvars.iv.next8, ptr %indvars.iv7.reg2mem, align 8
  br i1 %exitcond9, label %dec_label_pc_62a9e, label %dec_label_pc_62a7a

dec_label_pc_62a9e:                               ; preds = %dec_label_pc_62a7a
  %21 = icmp ugt i32 %stack_var_-40.0.reload, 9
  br i1 %21, label %dec_label_pc_62af6, label %dec_label_pc_62aaa

dec_label_pc_62aaa:                               ; preds = %dec_label_pc_62a9e
  %22 = sext i32 %stack_var_-40.0.reload to i64
  %23 = mul i64 %22, 4
  %24 = add i64 %17, %23
  %25 = inttoptr i64 %24 to ptr
  store i32 1, ptr %25, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_62acd

dec_label_pc_62acd:                               ; preds = %dec_label_pc_62acd, %dec_label_pc_62aaa
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %26 = mul i64 %indvars.iv.reload, 4
  %27 = add i64 %26, %17
  %28 = inttoptr i64 %27 to ptr
  %29 = load i32, ptr %28, align 4
  call void @printIntLine(i32 %29)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_62b05, label %dec_label_pc_62acd

dec_label_pc_62af6:                               ; preds = %dec_label_pc_62a9e
  call void @printLine(ptr @global_var_af850)
  br label %dec_label_pc_62b05

dec_label_pc_62b05:                               ; preds = %dec_label_pc_62acd, %dec_label_pc_62af6
  %30 = icmp eq i64 %17, 0
  br i1 %30, label %dec_label_pc_62b18, label %dec_label_pc_62b0c

dec_label_pc_62b0c:                               ; preds = %dec_label_pc_62b05
  %31 = inttoptr i64 %17 to ptr
  %32 = and i64 %1, 4294967295
  %33 = inttoptr i64 %32 to ptr
  call void @_ZdaPv(ptr %31, ptr %33)
  br label %dec_label_pc_62b18

dec_label_pc_62b18:                               ; preds = %dec_label_pc_62b0c, %dec_label_pc_62b05, %dec_label_pc_62a4f
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

