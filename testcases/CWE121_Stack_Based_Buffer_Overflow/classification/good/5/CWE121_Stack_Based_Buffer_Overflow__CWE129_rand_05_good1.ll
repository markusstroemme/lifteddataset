@global_var_b8570 = external constant [21 x i8]
@global_var_b8588 = external constant [36 x i8]
@global_var_c0760 = external constant [4 x i8]
@global_var_ef038 = external local_unnamed_addr global i32
@global_var_ef1c8 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_3ff14:
  %indvars.iv.reg2mem = alloca i64, align 8
  %stack_var_-80.0.reg2mem = alloca i32, align 4
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_ef038, align 4
  %2 = icmp eq i32 %1, 0
  store i32 -1, ptr %stack_var_-80.0.reg2mem, align 4
  br i1 %2, label %dec_label_pc_3ff8a, label %dec_label_pc_3ff41

dec_label_pc_3ff41:                               ; preds = %dec_label_pc_3ff14
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
  %storemerge1.in = xor i32 %12, %13
  store i32 %storemerge1.in, ptr %stack_var_-80.0.reg2mem, align 4
  br label %dec_label_pc_3ff8a

dec_label_pc_3ff8a:                               ; preds = %dec_label_pc_3ff41, %dec_label_pc_3ff14
  %14 = load i32, ptr @global_var_ef1c8, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %dec_label_pc_3ffa5, label %dec_label_pc_3ff94

dec_label_pc_3ff94:                               ; preds = %dec_label_pc_3ff8a
  call void @printLine(ptr @global_var_b8570)
  br label %dec_label_pc_4001c

dec_label_pc_3ffa5:                               ; preds = %dec_label_pc_3ff8a
  %stack_var_-80.0.reload = load i32, ptr %stack_var_-80.0.reg2mem, align 4
  %16 = icmp ugt i32 %stack_var_-80.0.reload, 9
  br i1 %16, label %dec_label_pc_4000b, label %dec_label_pc_3ffd9

dec_label_pc_3ffd9:                               ; preds = %dec_label_pc_3ffa5
  %17 = ptrtoint ptr %stack_var_-8 to i64
  %18 = sext i32 %stack_var_-80.0.reload to i64
  %19 = mul i64 %18, 4
  %20 = add i64 %17, -64
  %21 = add i64 %19, %20
  %22 = inttoptr i64 %21 to ptr
  store i32 1, ptr %22, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_3ffef

dec_label_pc_3ffef:                               ; preds = %dec_label_pc_3ffef, %dec_label_pc_3ffd9
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %23 = mul i64 %indvars.iv.reload, 4
  %24 = add i64 %23, %20
  %25 = inttoptr i64 %24 to ptr
  %26 = load i32, ptr %25, align 4
  call void @printIntLine(i32 %26)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_4001c, label %dec_label_pc_3ffef

dec_label_pc_4000b:                               ; preds = %dec_label_pc_3ffa5
  call void @printLine(ptr @global_var_b8588)
  br label %dec_label_pc_4001c

dec_label_pc_4001c:                               ; preds = %dec_label_pc_3ffef, %dec_label_pc_4000b, %dec_label_pc_3ff94
  %27 = call i64 @__readfsqword(i64 40)
  %28 = icmp eq i64 %0, %27
  br i1 %28, label %dec_label_pc_40031, label %dec_label_pc_4002c

dec_label_pc_4002c:                               ; preds = %dec_label_pc_4001c
  call void @__stack_chk_fail()
  br label %dec_label_pc_40031

dec_label_pc_40031:                               ; preds = %dec_label_pc_4002c, %dec_label_pc_4001c
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

