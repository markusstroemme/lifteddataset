@global_var_b88c0 = external constant [21 x i8]
@global_var_b88d8 = external constant [36 x i8]
@global_var_c0760 = external constant [4 x i8]
@global_var_ef084 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_42cbd:
  %indvars.iv.reg2mem = alloca i64, align 8
  %stack_var_-80.0.reg2mem = alloca i32, align 4
  %.reg2mem = alloca i32, align 4
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_ef084, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store i32 %1, ptr %.reg2mem, align 4
  store i32 -1, ptr %stack_var_-80.0.reg2mem, align 4
  br i1 %3, label %dec_label_pc_42d34, label %dec_label_pc_42ceb

dec_label_pc_42ceb:                               ; preds = %dec_label_pc_42cbd
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
  %storemerge1.in = xor i32 %13, %14
  %.pr = load i32, ptr @global_var_ef084, align 4
  store i32 %.pr, ptr %.reg2mem, align 4
  store i32 %storemerge1.in, ptr %stack_var_-80.0.reg2mem, align 4
  br label %dec_label_pc_42d34

dec_label_pc_42d34:                               ; preds = %dec_label_pc_42ceb, %dec_label_pc_42cbd
  %.reload = load i32, ptr %.reg2mem, align 4
  %15 = icmp eq i32 %.reload, 5
  br i1 %15, label %dec_label_pc_42d50, label %dec_label_pc_42d3f

dec_label_pc_42d3f:                               ; preds = %dec_label_pc_42d34
  call void @printLine(ptr @global_var_b88c0)
  br label %dec_label_pc_42dc7

dec_label_pc_42d50:                               ; preds = %dec_label_pc_42d34
  %stack_var_-80.0.reload = load i32, ptr %stack_var_-80.0.reg2mem, align 4
  %16 = icmp ugt i32 %stack_var_-80.0.reload, 9
  br i1 %16, label %dec_label_pc_42db6, label %dec_label_pc_42d84

dec_label_pc_42d84:                               ; preds = %dec_label_pc_42d50
  %17 = ptrtoint ptr %stack_var_-8 to i64
  %18 = sext i32 %stack_var_-80.0.reload to i64
  %19 = mul i64 %18, 4
  %20 = add i64 %17, -64
  %21 = add i64 %19, %20
  %22 = inttoptr i64 %21 to ptr
  store i32 1, ptr %22, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_42d9a

dec_label_pc_42d9a:                               ; preds = %dec_label_pc_42d9a, %dec_label_pc_42d84
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %23 = mul i64 %indvars.iv.reload, 4
  %24 = add i64 %23, %20
  %25 = inttoptr i64 %24 to ptr
  %26 = load i32, ptr %25, align 4
  call void @printIntLine(i32 %26)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_42dc7, label %dec_label_pc_42d9a

dec_label_pc_42db6:                               ; preds = %dec_label_pc_42d50
  call void @printLine(ptr @global_var_b88d8)
  br label %dec_label_pc_42dc7

dec_label_pc_42dc7:                               ; preds = %dec_label_pc_42d9a, %dec_label_pc_42db6, %dec_label_pc_42d3f
  %27 = call i64 @__readfsqword(i64 40)
  %28 = icmp eq i64 %0, %27
  br i1 %28, label %dec_label_pc_42ddc, label %dec_label_pc_42dd7

dec_label_pc_42dd7:                               ; preds = %dec_label_pc_42dc7
  call void @__stack_chk_fail()
  br label %dec_label_pc_42ddc

dec_label_pc_42ddc:                               ; preds = %dec_label_pc_42dd7, %dec_label_pc_42dc7
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

