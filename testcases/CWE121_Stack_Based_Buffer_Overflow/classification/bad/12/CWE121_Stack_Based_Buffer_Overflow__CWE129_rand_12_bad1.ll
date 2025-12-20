@global_var_b87f8 = external constant [32 x i8]
@global_var_b8818 = external constant [36 x i8]
@global_var_c0760 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_421c1:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv8.reg2mem = alloca i64, align 8
  %storemerge3.reg2mem = alloca i32, align 4
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  store i32 7, ptr %storemerge3.reg2mem, align 4
  br i1 %2, label %dec_label_pc_42244, label %dec_label_pc_421f2

dec_label_pc_421f2:                               ; preds = %dec_label_pc_421c1
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
  %storemerge2.in = xor i32 %12, %13
  store i32 %storemerge2.in, ptr %storemerge3.reg2mem, align 4
  br label %dec_label_pc_42244

dec_label_pc_42244:                               ; preds = %dec_label_pc_421c1, %dec_label_pc_421f2
  %14 = ptrtoint ptr %stack_var_-8 to i64
  %storemerge3.reload = load i32, ptr %storemerge3.reg2mem, align 4
  %15 = call i32 @globalReturnsTrueOrFalse()
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %dec_label_pc_422c6, label %dec_label_pc_42252

dec_label_pc_42252:                               ; preds = %dec_label_pc_42244
  %17 = icmp slt i32 %storemerge3.reload, 0
  br i1 %17, label %dec_label_pc_422b5, label %dec_label_pc_42280

dec_label_pc_42280:                               ; preds = %dec_label_pc_42252
  %18 = sext i32 %storemerge3.reload to i64
  %19 = mul i64 %18, 4
  %20 = add i64 %14, -64
  %21 = add i64 %19, %20
  %22 = inttoptr i64 %21 to ptr
  store i32 1, ptr %22, align 4
  store i64 0, ptr %indvars.iv8.reg2mem, align 8
  br label %dec_label_pc_42296

dec_label_pc_42296:                               ; preds = %dec_label_pc_42296, %dec_label_pc_42280
  %indvars.iv8.reload = load i64, ptr %indvars.iv8.reg2mem, align 8
  %23 = mul i64 %indvars.iv8.reload, 4
  %24 = add i64 %23, %20
  %25 = inttoptr i64 %24 to ptr
  %26 = load i32, ptr %25, align 4
  call void @printIntLine(i32 %26)
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8.reload, 1
  %exitcond10 = icmp eq i64 %indvars.iv.next9, 10
  store i64 %indvars.iv.next9, ptr %indvars.iv8.reg2mem, align 8
  br i1 %exitcond10, label %dec_label_pc_4233d, label %dec_label_pc_42296

dec_label_pc_422b5:                               ; preds = %dec_label_pc_42252
  call void @printLine(ptr @global_var_b87f8)
  br label %dec_label_pc_4233d

dec_label_pc_422c6:                               ; preds = %dec_label_pc_42244
  %27 = icmp ugt i32 %storemerge3.reload, 9
  br i1 %27, label %dec_label_pc_4232c, label %dec_label_pc_422fa

dec_label_pc_422fa:                               ; preds = %dec_label_pc_422c6
  %28 = sext i32 %storemerge3.reload to i64
  %29 = mul i64 %28, 4
  %30 = add i64 %14, -64
  %31 = add i64 %29, %30
  %32 = inttoptr i64 %31 to ptr
  store i32 1, ptr %32, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_42310

dec_label_pc_42310:                               ; preds = %dec_label_pc_42310, %dec_label_pc_422fa
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %33 = mul i64 %indvars.iv.reload, 4
  %34 = add i64 %33, %30
  %35 = inttoptr i64 %34 to ptr
  %36 = load i32, ptr %35, align 4
  call void @printIntLine(i32 %36)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_4233d, label %dec_label_pc_42310

dec_label_pc_4232c:                               ; preds = %dec_label_pc_422c6
  call void @printLine(ptr @global_var_b8818)
  br label %dec_label_pc_4233d

dec_label_pc_4233d:                               ; preds = %dec_label_pc_42296, %dec_label_pc_42310, %dec_label_pc_4232c, %dec_label_pc_422b5
  %37 = call i64 @__readfsqword(i64 40)
  %38 = icmp eq i64 %0, %37
  br i1 %38, label %dec_label_pc_42352, label %dec_label_pc_4234d

dec_label_pc_4234d:                               ; preds = %dec_label_pc_4233d
  call void @__stack_chk_fail()
  br label %dec_label_pc_42352

dec_label_pc_42352:                               ; preds = %dec_label_pc_4234d, %dec_label_pc_4233d
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

