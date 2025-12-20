@global_var_b5600 = external constant [16 x i8]
@global_var_b5610 = external constant [32 x i8]
@global_var_b5630 = external constant [36 x i8]
@global_var_c0760 = external constant [4 x i8]
@global_var_ef090 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_19d75:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv6.reg2mem = alloca i64, align 8
  %stack_var_-84.0.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  store i32 7, ptr %stack_var_-84.0.reg2mem, align 4
  br i1 %2, label %dec_label_pc_19e00, label %dec_label_pc_19da5

dec_label_pc_19da5:                               ; preds = %dec_label_pc_19d75
  store i64 0, ptr %stack_var_-30, align 8
  %3 = load ptr, ptr @global_var_ef090, align 8
  %4 = bitcast ptr %stack_var_-30 to ptr
  %5 = call ptr @fgets(ptr nonnull %4, i32 14, ptr %3)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %dec_label_pc_19de8, label %dec_label_pc_19dd7

dec_label_pc_19dd7:                               ; preds = %dec_label_pc_19da5
  %7 = call i32 @atoi(ptr nonnull %4)
  store i32 %7, ptr %stack_var_-84.0.reg2mem, align 4
  br label %dec_label_pc_19e00

dec_label_pc_19de8:                               ; preds = %dec_label_pc_19da5
  call void @printLine(ptr @global_var_b5600)
  store i32 -1, ptr %stack_var_-84.0.reg2mem, align 4
  br label %dec_label_pc_19e00

dec_label_pc_19e00:                               ; preds = %dec_label_pc_19d75, %dec_label_pc_19de8, %dec_label_pc_19dd7
  %8 = ptrtoint ptr %stack_var_-8 to i64
  %stack_var_-84.0.reload = load i32, ptr %stack_var_-84.0.reg2mem, align 4
  %9 = call i32 @globalReturnsTrueOrFalse()
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %dec_label_pc_19e82, label %dec_label_pc_19e0e

dec_label_pc_19e0e:                               ; preds = %dec_label_pc_19e00
  %11 = icmp slt i32 %stack_var_-84.0.reload, 0
  br i1 %11, label %dec_label_pc_19e71, label %dec_label_pc_19e3c

dec_label_pc_19e3c:                               ; preds = %dec_label_pc_19e0e
  %12 = sext i32 %stack_var_-84.0.reload to i64
  %13 = mul i64 %12, 4
  %14 = add i64 %8, -64
  %15 = add i64 %13, %14
  %16 = inttoptr i64 %15 to ptr
  store i32 1, ptr %16, align 4
  store i64 0, ptr %indvars.iv6.reg2mem, align 8
  br label %dec_label_pc_19e52

dec_label_pc_19e52:                               ; preds = %dec_label_pc_19e52, %dec_label_pc_19e3c
  %indvars.iv6.reload = load i64, ptr %indvars.iv6.reg2mem, align 8
  %17 = mul i64 %indvars.iv6.reload, 4
  %18 = add i64 %17, %14
  %19 = inttoptr i64 %18 to ptr
  %20 = load i32, ptr %19, align 4
  call void @printIntLine(i32 %20)
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6.reload, 1
  %exitcond8 = icmp eq i64 %indvars.iv.next7, 10
  store i64 %indvars.iv.next7, ptr %indvars.iv6.reg2mem, align 8
  br i1 %exitcond8, label %dec_label_pc_19ef9, label %dec_label_pc_19e52

dec_label_pc_19e71:                               ; preds = %dec_label_pc_19e0e
  call void @printLine(ptr @global_var_b5610)
  br label %dec_label_pc_19ef9

dec_label_pc_19e82:                               ; preds = %dec_label_pc_19e00
  %21 = icmp ugt i32 %stack_var_-84.0.reload, 9
  br i1 %21, label %dec_label_pc_19ee8, label %dec_label_pc_19eb6

dec_label_pc_19eb6:                               ; preds = %dec_label_pc_19e82
  %22 = sext i32 %stack_var_-84.0.reload to i64
  %23 = mul i64 %22, 4
  %24 = add i64 %8, -64
  %25 = add i64 %23, %24
  %26 = inttoptr i64 %25 to ptr
  store i32 1, ptr %26, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_19ecc

dec_label_pc_19ecc:                               ; preds = %dec_label_pc_19ecc, %dec_label_pc_19eb6
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %27 = mul i64 %indvars.iv.reload, 4
  %28 = add i64 %27, %24
  %29 = inttoptr i64 %28 to ptr
  %30 = load i32, ptr %29, align 4
  call void @printIntLine(i32 %30)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_19ef9, label %dec_label_pc_19ecc

dec_label_pc_19ee8:                               ; preds = %dec_label_pc_19e82
  call void @printLine(ptr @global_var_b5630)
  br label %dec_label_pc_19ef9

dec_label_pc_19ef9:                               ; preds = %dec_label_pc_19e52, %dec_label_pc_19ecc, %dec_label_pc_19ee8, %dec_label_pc_19e71
  %31 = call i64 @__readfsqword(i64 40)
  %32 = icmp eq i64 %0, %31
  br i1 %32, label %dec_label_pc_19f0e, label %dec_label_pc_19f09

dec_label_pc_19f09:                               ; preds = %dec_label_pc_19ef9
  call void @__stack_chk_fail()
  br label %dec_label_pc_19f0e

dec_label_pc_19f0e:                               ; preds = %dec_label_pc_19f09, %dec_label_pc_19ef9
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_a06bb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_a06de, label %dec_label_pc_a06d2

dec_label_pc_a06d2:                               ; preds = %dec_label_pc_a06bb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_a06de

dec_label_pc_a06de:                               ; preds = %dec_label_pc_a06d2, %dec_label_pc_a06bb
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_a0716:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_c0760, i64 %0)
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_a0be9:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare ptr @fgets(ptr, i32, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

