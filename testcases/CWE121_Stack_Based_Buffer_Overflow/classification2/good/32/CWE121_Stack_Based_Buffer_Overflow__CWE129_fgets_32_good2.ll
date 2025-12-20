@global_var_b59d0 = external constant [16 x i8]
@global_var_b5a00 = external constant [36 x i8]
@global_var_c0760 = external constant [4 x i8]
@global_var_ef090 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_1c917:
  %.reg2mem = alloca i64, align 8
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-30, align 8
  %1 = load ptr, ptr @global_var_ef090, align 8
  %2 = bitcast ptr %stack_var_-30 to ptr
  %3 = call ptr @fgets(ptr nonnull %2, i32 14, ptr %1)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %dec_label_pc_1c9a4.thread, label %dec_label_pc_1c9a4

dec_label_pc_1c9a4.thread:                        ; preds = %dec_label_pc_1c917
  call void @printLine(ptr @global_var_b59d0)
  br label %dec_label_pc_1ca1c

dec_label_pc_1c9a4:                               ; preds = %dec_label_pc_1c917
  %5 = call i32 @atoi(ptr nonnull %2)
  %6 = icmp ugt i32 %5, 9
  br i1 %6, label %dec_label_pc_1ca1c, label %dec_label_pc_1c9ea

dec_label_pc_1c9ea:                               ; preds = %dec_label_pc_1c9a4
  %7 = ptrtoint ptr %stack_var_-8 to i64
  %8 = sext i32 %5 to i64
  %9 = mul i64 %8, 4
  %10 = add i64 %7, -64
  %11 = add i64 %9, %10
  %12 = inttoptr i64 %11 to ptr
  store i32 1, ptr %12, align 4
  store i64 0, ptr %.reg2mem, align 8
  br label %dec_label_pc_1ca00

dec_label_pc_1ca00:                               ; preds = %dec_label_pc_1c9ea, %dec_label_pc_1ca00
  %.reload = load i64, ptr %.reg2mem, align 8
  %sext = mul i64 %.reload, 4294967296
  %13 = ashr exact i64 %sext, 30
  %14 = add i64 %13, %10
  %15 = inttoptr i64 %14 to ptr
  %16 = load i32, ptr %15, align 4
  call void @printIntLine(i32 %16)
  %17 = add nuw nsw i64 %.reload, 1
  %18 = and i64 %17, 4294967295
  %19 = trunc i64 %17 to i32
  %20 = icmp slt i32 %19, 10
  store i64 %18, ptr %.reg2mem, align 8
  br i1 %20, label %dec_label_pc_1ca00, label %dec_label_pc_1ca2b

dec_label_pc_1ca1c:                               ; preds = %dec_label_pc_1c9a4.thread, %dec_label_pc_1c9a4
  call void @printLine(ptr @global_var_b5a00)
  br label %dec_label_pc_1ca2b

dec_label_pc_1ca2b:                               ; preds = %dec_label_pc_1ca00, %dec_label_pc_1ca1c
  %21 = call i64 @__readfsqword(i64 40)
  %22 = icmp eq i64 %0, %21
  br i1 %22, label %dec_label_pc_1ca40, label %dec_label_pc_1ca3b

dec_label_pc_1ca3b:                               ; preds = %dec_label_pc_1ca2b
  call void @__stack_chk_fail()
  br label %dec_label_pc_1ca40

dec_label_pc_1ca40:                               ; preds = %dec_label_pc_1ca3b, %dec_label_pc_1ca2b
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

