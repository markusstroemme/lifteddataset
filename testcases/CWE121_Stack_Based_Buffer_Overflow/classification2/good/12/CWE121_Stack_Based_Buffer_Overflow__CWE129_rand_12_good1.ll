@global_var_b8818 = external constant [36 x i8]
@global_var_c0760 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_42358:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv11.reg2mem = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = call i32 @globalReturnsTrueOrFalse()
  %3 = call i32 @rand()
  %4 = urem i32 %3, 2
  %5 = icmp eq i32 %4, 0
  %6 = call i32 @rand()
  %7 = mul i32 %6, 1073741824
  %8 = call i32 @rand()
  %9 = mul i32 %8, 32768
  %10 = xor i32 %9, %7
  %11 = call i32 @rand()
  %12 = xor i32 %10, %11
  %13 = sext i1 %5 to i32
  %storemerge4.in = xor i32 %12, %13
  %14 = call i32 @globalReturnsTrueOrFalse()
  %15 = icmp eq i32 %14, 0
  %16 = icmp ugt i32 %storemerge4.in, 9
  br i1 %15, label %dec_label_pc_424a5, label %dec_label_pc_4242b

dec_label_pc_4242b:                               ; preds = %dec_label_pc_42358
  br i1 %16, label %dec_label_pc_42494, label %dec_label_pc_4245f

dec_label_pc_4245f:                               ; preds = %dec_label_pc_4242b
  %17 = sext i32 %storemerge4.in to i64
  %18 = mul i64 %17, 4
  %19 = add i64 %0, -64
  %20 = add i64 %18, %19
  %21 = inttoptr i64 %20 to ptr
  store i32 1, ptr %21, align 4
  store i64 0, ptr %indvars.iv11.reg2mem, align 8
  br label %dec_label_pc_42475

dec_label_pc_42475:                               ; preds = %dec_label_pc_42475, %dec_label_pc_4245f
  %indvars.iv11.reload = load i64, ptr %indvars.iv11.reg2mem, align 8
  %22 = mul i64 %indvars.iv11.reload, 4
  %23 = add i64 %22, %19
  %24 = inttoptr i64 %23 to ptr
  %25 = load i32, ptr %24, align 4
  call void @printIntLine(i32 %25)
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11.reload, 1
  %exitcond13 = icmp eq i64 %indvars.iv.next12, 10
  store i64 %indvars.iv.next12, ptr %indvars.iv11.reg2mem, align 8
  br i1 %exitcond13, label %dec_label_pc_4251c, label %dec_label_pc_42475

dec_label_pc_42494:                               ; preds = %dec_label_pc_4242b
  call void @printLine(ptr @global_var_b8818)
  br label %dec_label_pc_4251c

dec_label_pc_424a5:                               ; preds = %dec_label_pc_42358
  br i1 %16, label %dec_label_pc_4250b, label %dec_label_pc_424d9

dec_label_pc_424d9:                               ; preds = %dec_label_pc_424a5
  %26 = sext i32 %storemerge4.in to i64
  %27 = mul i64 %26, 4
  %28 = add i64 %0, -64
  %29 = add i64 %27, %28
  %30 = inttoptr i64 %29 to ptr
  store i32 1, ptr %30, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_424ef

dec_label_pc_424ef:                               ; preds = %dec_label_pc_424ef, %dec_label_pc_424d9
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %31 = mul i64 %indvars.iv.reload, 4
  %32 = add i64 %31, %28
  %33 = inttoptr i64 %32 to ptr
  %34 = load i32, ptr %33, align 4
  call void @printIntLine(i32 %34)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_4251c, label %dec_label_pc_424ef

dec_label_pc_4250b:                               ; preds = %dec_label_pc_424a5
  call void @printLine(ptr @global_var_b8818)
  br label %dec_label_pc_4251c

dec_label_pc_4251c:                               ; preds = %dec_label_pc_42475, %dec_label_pc_424ef, %dec_label_pc_4250b, %dec_label_pc_42494
  %35 = call i64 @__readfsqword(i64 40)
  %36 = icmp eq i64 %1, %35
  br i1 %36, label %dec_label_pc_42531, label %dec_label_pc_4252c

dec_label_pc_4252c:                               ; preds = %dec_label_pc_4251c
  call void @__stack_chk_fail()
  br label %dec_label_pc_42531

dec_label_pc_42531:                               ; preds = %dec_label_pc_4252c, %dec_label_pc_4251c
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

declare i64 @__readfsqword(i64) local_unnamed_addr

