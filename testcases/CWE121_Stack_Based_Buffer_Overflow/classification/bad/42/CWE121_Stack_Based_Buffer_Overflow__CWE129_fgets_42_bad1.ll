@global_var_b5ad8 = external constant [16 x i8]
@global_var_b5ae8 = external constant [32 x i8]
@global_var_c0760 = external constant [4 x i8]
@0 = external global i32
@global_var_ef090 = external local_unnamed_addr global ptr

define i32 @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_1d0af:
  %rax.0.reg2mem = alloca i32, align 4
  %stack_var_-44.0.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-30, align 8
  %1 = load ptr, ptr @global_var_ef090, align 8
  %2 = bitcast ptr %stack_var_-30 to ptr
  %3 = call ptr @fgets(ptr nonnull %2, i32 14, ptr %1)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %dec_label_pc_1d110, label %dec_label_pc_1d0ff

dec_label_pc_1d0ff:                               ; preds = %dec_label_pc_1d0af
  %5 = call i32 @atoi(ptr nonnull %2)
  store i32 %5, ptr %stack_var_-44.0.reg2mem, align 4
  br label %dec_label_pc_1d11f

dec_label_pc_1d110:                               ; preds = %dec_label_pc_1d0af
  call void @printLine(ptr @global_var_b5ad8)
  store i32 %data, ptr %stack_var_-44.0.reg2mem, align 4
  br label %dec_label_pc_1d11f

dec_label_pc_1d11f:                               ; preds = %dec_label_pc_1d110, %dec_label_pc_1d0ff
  %stack_var_-44.0.reload = load i32, ptr %stack_var_-44.0.reg2mem, align 4
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  store i32 %stack_var_-44.0.reload, ptr %rax.0.reg2mem, align 4
  br i1 %7, label %dec_label_pc_1d136, label %dec_label_pc_1d131

dec_label_pc_1d131:                               ; preds = %dec_label_pc_1d11f
  call void @__stack_chk_fail()
  store i32 ptrtoint (ptr @0 to i32), ptr %rax.0.reg2mem, align 4
  br label %dec_label_pc_1d136

dec_label_pc_1d136:                               ; preds = %dec_label_pc_1d131, %dec_label_pc_1d11f
  %rax.0.reload = load i32, ptr %rax.0.reg2mem, align 4
  ret i32 %rax.0.reload
}

define void @anon0() local_unnamed_addr {
dec_label_pc_1d138:
  %indvars.iv.reg2mem = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @anon1(i32 -1)
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %dec_label_pc_1d1c7, label %dec_label_pc_1d195

dec_label_pc_1d195:                               ; preds = %dec_label_pc_1d138
  %3 = ptrtoint ptr %stack_var_-8 to i64
  %4 = sext i32 %1 to i64
  %5 = mul i64 %4, 4
  %6 = add i64 %3, -48
  %7 = add i64 %5, %6
  %8 = inttoptr i64 %7 to ptr
  store i32 1, ptr %8, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_1d1ab

dec_label_pc_1d1ab:                               ; preds = %dec_label_pc_1d1ab, %dec_label_pc_1d195
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %9 = mul i64 %indvars.iv.reload, 4
  %10 = add i64 %9, %6
  %11 = inttoptr i64 %10 to ptr
  %12 = load i32, ptr %11, align 4
  call void @printIntLine(i32 %12)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_1d1d6, label %dec_label_pc_1d1ab

dec_label_pc_1d1c7:                               ; preds = %dec_label_pc_1d138
  call void @printLine(ptr @global_var_b5ae8)
  br label %dec_label_pc_1d1d6

dec_label_pc_1d1d6:                               ; preds = %dec_label_pc_1d1ab, %dec_label_pc_1d1c7
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %0, %13
  br i1 %14, label %dec_label_pc_1d1eb, label %dec_label_pc_1d1e6

dec_label_pc_1d1e6:                               ; preds = %dec_label_pc_1d1d6
  call void @__stack_chk_fail()
  br label %dec_label_pc_1d1eb

dec_label_pc_1d1eb:                               ; preds = %dec_label_pc_1d1e6, %dec_label_pc_1d1d6
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

