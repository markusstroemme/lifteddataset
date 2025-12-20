@global_var_b8618 = external constant [32 x i8]
@global_var_c0760 = external constant [4 x i8]
@global_var_ef03c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_4081c:
  %indvars.iv.reg2mem = alloca i64, align 8
  %stack_var_-80.0.reg2mem = alloca i32, align 4
  %.reg2mem = alloca i32, align 4
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_ef03c, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store i32 %1, ptr %.reg2mem, align 4
  store i32 -1, ptr %stack_var_-80.0.reg2mem, align 4
  br i1 %3, label %dec_label_pc_40893, label %dec_label_pc_4084a

dec_label_pc_4084a:                               ; preds = %dec_label_pc_4081c
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
  %.pre = load i32, ptr @global_var_ef03c, align 4
  store i32 %.pre, ptr %.reg2mem, align 4
  store i32 %storemerge1.in, ptr %stack_var_-80.0.reg2mem, align 4
  br label %dec_label_pc_40893

dec_label_pc_40893:                               ; preds = %dec_label_pc_4084a, %dec_label_pc_4081c
  %.reload = load i32, ptr %.reg2mem, align 4
  %15 = icmp eq i32 %.reload, 5
  %16 = icmp eq i1 %15, false
  br i1 %16, label %dec_label_pc_4090d, label %dec_label_pc_4089e

dec_label_pc_4089e:                               ; preds = %dec_label_pc_40893
  %stack_var_-80.0.reload = load i32, ptr %stack_var_-80.0.reg2mem, align 4
  %17 = icmp slt i32 %stack_var_-80.0.reload, 0
  br i1 %17, label %dec_label_pc_408fe, label %dec_label_pc_408cc

dec_label_pc_408cc:                               ; preds = %dec_label_pc_4089e
  %18 = ptrtoint ptr %stack_var_-8 to i64
  %19 = sext i32 %stack_var_-80.0.reload to i64
  %20 = mul i64 %19, 4
  %21 = add i64 %18, -64
  %22 = add i64 %20, %21
  %23 = inttoptr i64 %22 to ptr
  store i32 1, ptr %23, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_408e2

dec_label_pc_408e2:                               ; preds = %dec_label_pc_408e2, %dec_label_pc_408cc
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %24 = mul i64 %indvars.iv.reload, 4
  %25 = add i64 %24, %21
  %26 = inttoptr i64 %25 to ptr
  %27 = load i32, ptr %26, align 4
  call void @printIntLine(i32 %27)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_4090d, label %dec_label_pc_408e2

dec_label_pc_408fe:                               ; preds = %dec_label_pc_4089e
  call void @printLine(ptr @global_var_b8618)
  br label %dec_label_pc_4090d

dec_label_pc_4090d:                               ; preds = %dec_label_pc_408e2, %dec_label_pc_408fe, %dec_label_pc_40893
  %28 = call i64 @__readfsqword(i64 40)
  %29 = icmp eq i64 %0, %28
  br i1 %29, label %dec_label_pc_40922, label %dec_label_pc_4091d

dec_label_pc_4091d:                               ; preds = %dec_label_pc_4090d
  call void @__stack_chk_fail()
  br label %dec_label_pc_40922

dec_label_pc_40922:                               ; preds = %dec_label_pc_4091d, %dec_label_pc_4090d
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

