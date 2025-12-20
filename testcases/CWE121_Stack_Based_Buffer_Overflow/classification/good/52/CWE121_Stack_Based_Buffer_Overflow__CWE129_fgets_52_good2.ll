@global_var_b5c34 = external constant [16 x i8]
@global_var_b5c68 = external constant [36 x i8]
@global_var_c0760 = external constant [4 x i8]
@global_var_ef090 = external local_unnamed_addr global ptr

define void @anon2() local_unnamed_addr {
dec_label_pc_1df4f:
  %stack_var_-36.0.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-30, align 8
  %1 = load ptr, ptr @global_var_ef090, align 8
  %2 = bitcast ptr %stack_var_-30 to ptr
  %3 = call ptr @fgets(ptr nonnull %2, i32 14, ptr %1)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %dec_label_pc_1dfb4, label %dec_label_pc_1dfa3

dec_label_pc_1dfa3:                               ; preds = %dec_label_pc_1df4f
  %5 = call i32 @atoi(ptr nonnull %2)
  store i32 %5, ptr %stack_var_-36.0.reg2mem, align 4
  br label %dec_label_pc_1dfc3

dec_label_pc_1dfb4:                               ; preds = %dec_label_pc_1df4f
  call void @printLine(ptr @global_var_b5c34)
  store i32 -1, ptr %stack_var_-36.0.reg2mem, align 4
  br label %dec_label_pc_1dfc3

dec_label_pc_1dfc3:                               ; preds = %dec_label_pc_1dfb4, %dec_label_pc_1dfa3
  %stack_var_-36.0.reload = load i32, ptr %stack_var_-36.0.reg2mem, align 4
  call void @anon0(i32 %stack_var_-36.0.reload)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_1dfe2, label %dec_label_pc_1dfdd

dec_label_pc_1dfdd:                               ; preds = %dec_label_pc_1dfc3
  call void @__stack_chk_fail()
  br label %dec_label_pc_1dfe2

dec_label_pc_1dfe2:                               ; preds = %dec_label_pc_1dfdd, %dec_label_pc_1dfc3
  ret void
}

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_1e03b:
  call void @anon1(i32 %data)
  ret void
}

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_1e19f:
  %indvars.iv.reg2mem = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = icmp ugt i32 %data, 9
  br i1 %1, label %dec_label_pc_1e223, label %dec_label_pc_1e1f1

dec_label_pc_1e1f1:                               ; preds = %dec_label_pc_1e19f
  %2 = ptrtoint ptr %stack_var_-8 to i64
  %3 = sext i32 %data to i64
  %4 = mul i64 %3, 4
  %5 = add i64 %2, -48
  %6 = add i64 %5, %4
  %7 = inttoptr i64 %6 to ptr
  store i32 1, ptr %7, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_1e207

dec_label_pc_1e207:                               ; preds = %dec_label_pc_1e207, %dec_label_pc_1e1f1
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %8 = mul i64 %indvars.iv.reload, 4
  %9 = add i64 %8, %5
  %10 = inttoptr i64 %9 to ptr
  %11 = load i32, ptr %10, align 4
  call void @printIntLine(i32 %11)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_1e232, label %dec_label_pc_1e207

dec_label_pc_1e223:                               ; preds = %dec_label_pc_1e19f
  call void @printLine(ptr @global_var_b5c68)
  br label %dec_label_pc_1e232

dec_label_pc_1e232:                               ; preds = %dec_label_pc_1e207, %dec_label_pc_1e223
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %0, %12
  br i1 %13, label %dec_label_pc_1e247, label %dec_label_pc_1e242

dec_label_pc_1e242:                               ; preds = %dec_label_pc_1e232
  call void @__stack_chk_fail()
  br label %dec_label_pc_1e247

dec_label_pc_1e247:                               ; preds = %dec_label_pc_1e242, %dec_label_pc_1e232
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

