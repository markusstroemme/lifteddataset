@global_var_b5d94 = external constant [16 x i8]
@global_var_b5dc8 = external constant [36 x i8]
@global_var_c0760 = external constant [4 x i8]
@global_var_ef090 = external local_unnamed_addr global ptr

define void @anon1() local_unnamed_addr {
dec_label_pc_1ef01:
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-36 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 -1, ptr %stack_var_-36, align 4
  store i64 0, ptr %stack_var_-30, align 8
  %1 = load ptr, ptr @global_var_ef090, align 8
  %2 = bitcast ptr %stack_var_-30 to ptr
  %3 = call ptr @fgets(ptr nonnull %2, i32 14, ptr %1)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %dec_label_pc_1ef66, label %dec_label_pc_1ef55

dec_label_pc_1ef55:                               ; preds = %dec_label_pc_1ef01
  %5 = call i32 @atoi(ptr nonnull %2)
  store i32 %5, ptr %stack_var_-36, align 4
  br label %dec_label_pc_1ef75

dec_label_pc_1ef66:                               ; preds = %dec_label_pc_1ef01
  call void @printLine(ptr @global_var_b5d94)
  br label %dec_label_pc_1ef75

dec_label_pc_1ef75:                               ; preds = %dec_label_pc_1ef66, %dec_label_pc_1ef55
  call void @anon0(ptr nonnull %stack_var_-36)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_1ef96, label %dec_label_pc_1ef91

dec_label_pc_1ef91:                               ; preds = %dec_label_pc_1ef75
  call void @__stack_chk_fail()
  br label %dec_label_pc_1ef96

dec_label_pc_1ef96:                               ; preds = %dec_label_pc_1ef91, %dec_label_pc_1ef75
  ret void
}

define void @anon0(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_1f113:
  %0 = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-8 = alloca i64, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = trunc i64 %1 to i32
  %4 = icmp ugt i32 %3, 9
  br i1 %4, label %dec_label_pc_1f1a1, label %dec_label_pc_1f16f

dec_label_pc_1f16f:                               ; preds = %dec_label_pc_1f113
  %5 = ptrtoint ptr %stack_var_-8 to i64
  %sext = mul i64 %1, 4294967296
  %6 = ashr exact i64 %sext, 30
  %7 = add i64 %5, -48
  %8 = add i64 %7, %6
  %9 = inttoptr i64 %8 to ptr
  store i32 1, ptr %9, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_1f185

dec_label_pc_1f185:                               ; preds = %dec_label_pc_1f185, %dec_label_pc_1f16f
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %10 = mul i64 %indvars.iv.reload, 4
  %11 = add i64 %10, %7
  %12 = inttoptr i64 %11 to ptr
  %13 = load i32, ptr %12, align 4
  call void @printIntLine(i32 %13)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_1f1b0, label %dec_label_pc_1f185

dec_label_pc_1f1a1:                               ; preds = %dec_label_pc_1f113
  call void @printLine(ptr @global_var_b5dc8)
  br label %dec_label_pc_1f1b0

dec_label_pc_1f1b0:                               ; preds = %dec_label_pc_1f185, %dec_label_pc_1f1a1
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %2, %14
  br i1 %15, label %dec_label_pc_1f1c5, label %dec_label_pc_1f1c0

dec_label_pc_1f1c0:                               ; preds = %dec_label_pc_1f1b0
  call void @__stack_chk_fail()
  br label %dec_label_pc_1f1c5

dec_label_pc_1f1c5:                               ; preds = %dec_label_pc_1f1c0, %dec_label_pc_1f1b0
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

