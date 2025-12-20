@global_var_b5dec = external constant [16 x i8]
@global_var_b5e20 = external constant [36 x i8]
@global_var_c0760 = external constant [4 x i8]
@global_var_ef090 = external local_unnamed_addr global ptr

define void @anon1() local_unnamed_addr {
dec_label_pc_1f2aa:
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-36 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 -1, ptr %stack_var_-36, align 4
  store i64 0, ptr %stack_var_-30, align 8
  %1 = load ptr, ptr @global_var_ef090, align 8
  %2 = bitcast ptr %stack_var_-30 to ptr
  %3 = call ptr @fgets(ptr nonnull %2, i32 14, ptr %1)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %dec_label_pc_1f30f, label %dec_label_pc_1f2fe

dec_label_pc_1f2fe:                               ; preds = %dec_label_pc_1f2aa
  %5 = call i32 @atoi(ptr nonnull %2)
  store i32 %5, ptr %stack_var_-36, align 4
  br label %dec_label_pc_1f31e

dec_label_pc_1f30f:                               ; preds = %dec_label_pc_1f2aa
  call void @printLine(ptr @global_var_b5dec)
  br label %dec_label_pc_1f31e

dec_label_pc_1f31e:                               ; preds = %dec_label_pc_1f30f, %dec_label_pc_1f2fe
  %6 = bitcast ptr %stack_var_-36 to ptr
  call void @anon0(ptr nonnull %6)
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %0, %7
  br i1 %8, label %dec_label_pc_1f33f, label %dec_label_pc_1f33a

dec_label_pc_1f33a:                               ; preds = %dec_label_pc_1f31e
  call void @__stack_chk_fail()
  br label %dec_label_pc_1f33f

dec_label_pc_1f33f:                               ; preds = %dec_label_pc_1f33a, %dec_label_pc_1f31e
  ret void
}

define void @anon0(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_1f4cc:
  %0 = alloca i64, align 8
  %.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-8 = alloca i64, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = trunc i64 %1 to i32
  %4 = icmp ugt i32 %3, 9
  br i1 %4, label %dec_label_pc_1f562, label %dec_label_pc_1f530

dec_label_pc_1f530:                               ; preds = %dec_label_pc_1f4cc
  %5 = ptrtoint ptr %stack_var_-8 to i64
  %sext2 = mul i64 %1, 4294967296
  %6 = ashr exact i64 %sext2, 30
  %7 = add i64 %5, -48
  %8 = add i64 %7, %6
  %9 = inttoptr i64 %8 to ptr
  store i32 1, ptr %9, align 4
  store i64 0, ptr %.reg2mem, align 8
  br label %dec_label_pc_1f546

dec_label_pc_1f546:                               ; preds = %dec_label_pc_1f530, %dec_label_pc_1f546
  %.reload = load i64, ptr %.reg2mem, align 8
  %sext = mul i64 %.reload, 4294967296
  %10 = ashr exact i64 %sext, 30
  %11 = add i64 %10, %7
  %12 = inttoptr i64 %11 to ptr
  %13 = load i32, ptr %12, align 4
  call void @printIntLine(i32 %13)
  %14 = add nuw nsw i64 %.reload, 1
  %15 = and i64 %14, 4294967295
  %16 = trunc i64 %14 to i32
  %17 = icmp slt i32 %16, 10
  store i64 %15, ptr %.reg2mem, align 8
  br i1 %17, label %dec_label_pc_1f546, label %dec_label_pc_1f571

dec_label_pc_1f562:                               ; preds = %dec_label_pc_1f4cc
  call void @printLine(ptr @global_var_b5e20)
  br label %dec_label_pc_1f571

dec_label_pc_1f571:                               ; preds = %dec_label_pc_1f546, %dec_label_pc_1f562
  %18 = call i64 @__readfsqword(i64 40)
  %19 = icmp eq i64 %2, %18
  br i1 %19, label %dec_label_pc_1f586, label %dec_label_pc_1f581

dec_label_pc_1f581:                               ; preds = %dec_label_pc_1f571
  call void @__stack_chk_fail()
  br label %dec_label_pc_1f586

dec_label_pc_1f586:                               ; preds = %dec_label_pc_1f581, %dec_label_pc_1f571
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

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare ptr @fgets(ptr, i32, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

