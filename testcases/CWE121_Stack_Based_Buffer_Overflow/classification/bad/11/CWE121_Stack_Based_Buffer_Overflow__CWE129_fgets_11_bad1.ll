@global_var_b5590 = external constant [16 x i8]
@global_var_b55a0 = external constant [32 x i8]
@global_var_c0760 = external constant [4 x i8]
@global_var_ef090 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_19838:
  %indvars.iv.reg2mem = alloca i64, align 8
  %stack_var_-80.0.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrue()
  %2 = icmp eq i32 %1, 0
  store i32 -1, ptr %stack_var_-80.0.reg2mem, align 4
  br i1 %2, label %dec_label_pc_198ba, label %dec_label_pc_19868

dec_label_pc_19868:                               ; preds = %dec_label_pc_19838
  store i64 0, ptr %stack_var_-30, align 8
  %3 = load ptr, ptr @global_var_ef090, align 8
  %4 = bitcast ptr %stack_var_-30 to ptr
  %5 = call ptr @fgets(ptr nonnull %4, i32 14, ptr %3)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %dec_label_pc_198ab, label %dec_label_pc_1989a

dec_label_pc_1989a:                               ; preds = %dec_label_pc_19868
  %7 = call i32 @atoi(ptr nonnull %4)
  store i32 %7, ptr %stack_var_-80.0.reg2mem, align 4
  br label %dec_label_pc_198ba

dec_label_pc_198ab:                               ; preds = %dec_label_pc_19868
  call void @printLine(ptr @global_var_b5590)
  store i32 -1, ptr %stack_var_-80.0.reg2mem, align 4
  br label %dec_label_pc_198ba

dec_label_pc_198ba:                               ; preds = %dec_label_pc_198ab, %dec_label_pc_1989a, %dec_label_pc_19838
  %8 = call i32 @globalReturnsTrue()
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %dec_label_pc_19937, label %dec_label_pc_198c8

dec_label_pc_198c8:                               ; preds = %dec_label_pc_198ba
  %stack_var_-80.0.reload = load i32, ptr %stack_var_-80.0.reg2mem, align 4
  %10 = icmp slt i32 %stack_var_-80.0.reload, 0
  br i1 %10, label %dec_label_pc_19928, label %dec_label_pc_198f6

dec_label_pc_198f6:                               ; preds = %dec_label_pc_198c8
  %11 = ptrtoint ptr %stack_var_-8 to i64
  %12 = sext i32 %stack_var_-80.0.reload to i64
  %13 = mul i64 %12, 4
  %14 = add i64 %11, -64
  %15 = add i64 %13, %14
  %16 = inttoptr i64 %15 to ptr
  store i32 1, ptr %16, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_1990c

dec_label_pc_1990c:                               ; preds = %dec_label_pc_1990c, %dec_label_pc_198f6
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %17 = mul i64 %indvars.iv.reload, 4
  %18 = add i64 %17, %14
  %19 = inttoptr i64 %18 to ptr
  %20 = load i32, ptr %19, align 4
  call void @printIntLine(i32 %20)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_19937, label %dec_label_pc_1990c

dec_label_pc_19928:                               ; preds = %dec_label_pc_198c8
  call void @printLine(ptr @global_var_b55a0)
  br label %dec_label_pc_19937

dec_label_pc_19937:                               ; preds = %dec_label_pc_1990c, %dec_label_pc_19928, %dec_label_pc_198ba
  %21 = call i64 @__readfsqword(i64 40)
  %22 = icmp eq i64 %0, %21
  br i1 %22, label %dec_label_pc_1994c, label %dec_label_pc_19947

dec_label_pc_19947:                               ; preds = %dec_label_pc_19937
  call void @__stack_chk_fail()
  br label %dec_label_pc_1994c

dec_label_pc_1994c:                               ; preds = %dec_label_pc_19947, %dec_label_pc_19937
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

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_a0bcb:
  ret i32 1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare ptr @fgets(ptr, i32, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

