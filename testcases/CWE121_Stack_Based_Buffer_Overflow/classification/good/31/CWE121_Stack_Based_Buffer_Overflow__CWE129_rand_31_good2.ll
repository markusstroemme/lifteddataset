@global_var_b8b00 = external constant [36 x i8]
@global_var_c0760 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_448fe:
  %indvars.iv.reg2mem = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @rand()
  %2 = urem i32 %1, 2
  %3 = icmp eq i32 %2, 0
  %4 = call i32 @rand()
  %5 = mul i32 %4, 1073741824
  %6 = call i32 @rand()
  %7 = mul i32 %6, 32768
  %8 = xor i32 %7, %5
  %9 = call i32 @rand()
  %10 = xor i32 %8, %9
  %11 = sext i1 %3 to i32
  %storemerge2.in = xor i32 %10, %11
  %12 = icmp ugt i32 %storemerge2.in, 9
  br i1 %12, label %dec_label_pc_449dc, label %dec_label_pc_449aa

dec_label_pc_449aa:                               ; preds = %dec_label_pc_448fe
  %13 = ptrtoint ptr %stack_var_-8 to i64
  %14 = sext i32 %storemerge2.in to i64
  %15 = mul i64 %14, 4
  %16 = add i64 %13, -64
  %17 = add i64 %15, %16
  %18 = inttoptr i64 %17 to ptr
  store i32 1, ptr %18, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_449c0

dec_label_pc_449c0:                               ; preds = %dec_label_pc_449c0, %dec_label_pc_449aa
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %19 = mul i64 %indvars.iv.reload, 4
  %20 = add i64 %19, %16
  %21 = inttoptr i64 %20 to ptr
  %22 = load i32, ptr %21, align 4
  call void @printIntLine(i32 %22)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_449eb, label %dec_label_pc_449c0

dec_label_pc_449dc:                               ; preds = %dec_label_pc_448fe
  call void @printLine(ptr @global_var_b8b00)
  br label %dec_label_pc_449eb

dec_label_pc_449eb:                               ; preds = %dec_label_pc_449c0, %dec_label_pc_449dc
  %23 = call i64 @__readfsqword(i64 40)
  %24 = icmp eq i64 %0, %23
  br i1 %24, label %dec_label_pc_44a00, label %dec_label_pc_449fb

dec_label_pc_449fb:                               ; preds = %dec_label_pc_449eb
  call void @__stack_chk_fail()
  br label %dec_label_pc_44a00

dec_label_pc_44a00:                               ; preds = %dec_label_pc_449fb, %dec_label_pc_449eb
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

