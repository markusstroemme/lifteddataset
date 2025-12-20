@global_var_b89b0 = external constant [36 x i8]
@global_var_c0760 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_439b7:
  %indvars.iv.reg2mem = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @rand()
  %2 = call i32 @rand()
  %3 = call i32 @rand()
  %4 = call i32 @rand()
  %5 = urem i32 %1, 2
  %6 = icmp eq i32 %5, 0
  %7 = mul i32 %2, 1073741824
  %8 = mul i32 %3, 32768
  %9 = xor i32 %8, %7
  %10 = xor i32 %9, %4
  %11 = sext i1 %6 to i32
  %storemerge3.in.le = xor i32 %10, %11
  %12 = icmp ugt i32 %storemerge3.in.le, 9
  br i1 %12, label %dec_label_pc_43a1d, label %dec_label_pc_439eb

dec_label_pc_439eb:                               ; preds = %dec_label_pc_439b7
  %13 = ptrtoint ptr %stack_var_-8 to i64
  %14 = add i64 %13, -64
  %15 = sext i32 %storemerge3.in.le to i64
  %16 = mul i64 %15, 4
  %17 = add i64 %16, %14
  %18 = inttoptr i64 %17 to ptr
  store i32 1, ptr %18, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_43a01

dec_label_pc_43a01:                               ; preds = %dec_label_pc_43a01, %dec_label_pc_439eb
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %19 = mul i64 %indvars.iv.reload, 4
  %20 = add i64 %19, %14
  %21 = inttoptr i64 %20 to ptr
  %22 = load i32, ptr %21, align 4
  call void @printIntLine(i32 %22)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_43a36, label %dec_label_pc_43a01

dec_label_pc_43a1d:                               ; preds = %dec_label_pc_439b7
  call void @printLine(ptr @global_var_b89b0)
  br label %dec_label_pc_43a36

dec_label_pc_43a36:                               ; preds = %dec_label_pc_43a01, %dec_label_pc_43a1d
  %23 = call i64 @__readfsqword(i64 40)
  %24 = icmp eq i64 %0, %23
  br i1 %24, label %dec_label_pc_43a4b, label %dec_label_pc_43a46

dec_label_pc_43a46:                               ; preds = %dec_label_pc_43a36
  call void @__stack_chk_fail()
  br label %dec_label_pc_43a4b

dec_label_pc_43a4b:                               ; preds = %dec_label_pc_43a46, %dec_label_pc_43a36
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

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

