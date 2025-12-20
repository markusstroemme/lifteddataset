@global_var_b6174 = external constant [3 x i8]
@global_var_b61b0 = external constant [36 x i8]
@global_var_c0760 = external constant [4 x i8]
@global_var_ef090 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_2183e:
  %indvars.iv.reg2mem = alloca i64, align 8
  %stack_var_-64 = alloca i32, align 4
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i32 -1, ptr %stack_var_-64, align 4
  %1 = load ptr, ptr @global_var_ef090, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_b6174, ptr nonnull %stack_var_-64)
  %3 = load i32, ptr %stack_var_-64, align 4
  %4 = icmp ugt i32 %3, 9
  br i1 %4, label %dec_label_pc_21910, label %dec_label_pc_218de

dec_label_pc_218de:                               ; preds = %dec_label_pc_2183e
  %5 = ptrtoint ptr %stack_var_-8 to i64
  %6 = sext i32 %3 to i64
  %7 = mul i64 %6, 4
  %8 = add i64 %5, -48
  %9 = add i64 %7, %8
  %10 = inttoptr i64 %9 to ptr
  store i32 1, ptr %10, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_218f4

dec_label_pc_218f4:                               ; preds = %dec_label_pc_218f4, %dec_label_pc_218de
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %11 = mul i64 %indvars.iv.reload, 4
  %12 = add i64 %11, %8
  %13 = inttoptr i64 %12 to ptr
  %14 = load i32, ptr %13, align 4
  call void @printIntLine(i32 %14)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_21921, label %dec_label_pc_218f4

dec_label_pc_21910:                               ; preds = %dec_label_pc_2183e
  call void @printLine(ptr @global_var_b61b0)
  br label %dec_label_pc_21921

dec_label_pc_21921:                               ; preds = %dec_label_pc_218f4, %dec_label_pc_21910
  %15 = call i64 @__readfsqword(i64 40)
  %16 = icmp eq i64 %0, %15
  br i1 %16, label %dec_label_pc_21936, label %dec_label_pc_21931

dec_label_pc_21931:                               ; preds = %dec_label_pc_21921
  call void @__stack_chk_fail()
  br label %dec_label_pc_21936

dec_label_pc_21936:                               ; preds = %dec_label_pc_21931, %dec_label_pc_21921
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

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

