@global_var_b6aa0 = external constant [32 x i8]
@global_var_c0760 = external constant [4 x i8]
@global_var_ef090 = external local_unnamed_addr global ptr
@global_var_b6a97 = external constant [3 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_27a6b:
  %stack_var_-20 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 -1, ptr %stack_var_-20, align 4
  %1 = load ptr, ptr @global_var_ef090, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_b6a97)
  call void @anon1(ptr nonnull %stack_var_-20)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_27ad0, label %dec_label_pc_27acb

dec_label_pc_27acb:                               ; preds = %dec_label_pc_27a6b
  call void @__stack_chk_fail()
  br label %dec_label_pc_27ad0

dec_label_pc_27ad0:                               ; preds = %dec_label_pc_27acb, %dec_label_pc_27a6b
  ret void
}

define void @anon1(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_27ba4:
  %0 = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-8 = alloca i64, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = trunc i64 %1 to i32
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %dec_label_pc_27c2c, label %dec_label_pc_27bfa

dec_label_pc_27bfa:                               ; preds = %dec_label_pc_27ba4
  %5 = ptrtoint ptr %stack_var_-8 to i64
  %sext = mul i64 %1, 4294967296
  %6 = ashr exact i64 %sext, 30
  %7 = add i64 %5, -48
  %8 = add i64 %7, %6
  %9 = inttoptr i64 %8 to ptr
  store i32 1, ptr %9, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_27c10

dec_label_pc_27c10:                               ; preds = %dec_label_pc_27c10, %dec_label_pc_27bfa
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %10 = mul i64 %indvars.iv.reload, 4
  %11 = add i64 %10, %7
  %12 = inttoptr i64 %11 to ptr
  %13 = load i32, ptr %12, align 4
  call void @printIntLine(i32 %13)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_27c3b, label %dec_label_pc_27c10

dec_label_pc_27c2c:                               ; preds = %dec_label_pc_27ba4
  call void @printLine(ptr @global_var_b6aa0)
  br label %dec_label_pc_27c3b

dec_label_pc_27c3b:                               ; preds = %dec_label_pc_27c10, %dec_label_pc_27c2c
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %2, %14
  br i1 %15, label %dec_label_pc_27c50, label %dec_label_pc_27c4b

dec_label_pc_27c4b:                               ; preds = %dec_label_pc_27c3b
  call void @__stack_chk_fail()
  br label %dec_label_pc_27c50

dec_label_pc_27c50:                               ; preds = %dec_label_pc_27c4b, %dec_label_pc_27c3b
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

